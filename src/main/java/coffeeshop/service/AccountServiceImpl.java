package coffeeshop.service;

import coffeeshop.entity.Account;
import coffeeshop.entity.MyUserDetails;
import coffeeshop.entity.Role;
import coffeeshop.repository.AccountRepo;
import coffeeshop.repository.RoleRepo;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountRepo accountRepo;
    @Autowired
    private RoleRepo roleRepo;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Account findByUsername(String username) {
        return accountRepo.findByUsername(username);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = findByUsername(username);
        if (account == null) {
            throw new UsernameNotFoundException("Invalid Username");
        } else {
            List<GrantedAuthority> authorities = convertRolesToGrantedAuthorities(account.getRoles());
            User userOfSpringSecurity = new User(account.getUsername(), account.getPassword(), authorities);
            return userOfSpringSecurity;
        }
    }

    private List<GrantedAuthority> convertRolesToGrantedAuthorities(List<Role> roles) {
        List<GrantedAuthority> authorities = new ArrayList();
        for (Role r : roles) {
            GrantedAuthority authority = new SimpleGrantedAuthority(r.getRname());
            authorities.add(authority);
        }
        return authorities;
    }

    @Override
    public Account saveUser(Account account) {
        String plainPassword = account.getPassword();
        String hashedPassword = passwordEncoder.encode(plainPassword);
        account.setPassword(hashedPassword);
        Role role = roleRepo.findByRname("ROLE_USER");
        account.addRole(role);
        account = accountRepo.save(account);
        return account;
    }

    public List<Account> getAdmins() {
        return accountRepo.findByRoleId(1);
    }

    public List<Account> getUsers() {
        return accountRepo.findByRoleId(2);
    }

    public Account getCurrentlyLoggedInAccount(Authentication authentication) {
        if (authentication == null) {
            return null;
        }
        Account account = null;
        account = ((MyUserDetails) authentication.getPrincipal()).getAccount();
        return account;
    }

    @Override
    public Account update(Account accountNew) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Account account = getCurrentlyLoggedInAccount(authentication);
        setAccountDetails(account, accountNew);
        return accountRepo.save(account);
    }

    private void setAccountDetails(Account account, Account accountNew) {
        if (accountNew.getPassword().length() >= 4) {
            String hashedPassword = passwordEncoder.encode(accountNew.getPassword());
            account.setPassword(hashedPassword);
        }
        account.setEmail(accountNew.getEmail());
        account.setUsername(accountNew.getUsername());
        account.setTel(accountNew.getTel());
    }

    public List<Account> getAllAccounts() {
        return accountRepo.findAll();
    }

    @Override
    public Account getUserByOrder(int accountid) {
        return accountRepo.findByOrder(accountid);
    }

    @Override
    public Account findById(int accountid) {
        return accountRepo.findById(accountid).get();
    }

    @Override
    public Account updateUser(Account account) {
        return accountRepo.save(account);
    }
  
}
