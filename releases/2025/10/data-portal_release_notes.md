## uc-cdis/data-portal

#### Bug Fixes
  - Updated so that the DUA popup, if activated, has the highest priority and 
    should be able to be closed by the user ([#1727](https://github.com/uc-cdis/data-portal/pull/1727)) 
  - fixed a bug about search bar is initialized with incorrect fields 
    collection ([#1721](https://github.com/uc-cdis/data-portal/pull/1721))
  - fixed a bug cause page to freeze when search bar is active and switching 
    between pages ([#1721](https://github.com/uc-cdis/data-portal/pull/1721))
  - restore some default images ([#1720](https://github.com/uc-cdis/data-portal/pull/1720)) 
  - Fix issue on Discovery where the smaller batch for studies overwrites the 
    larger batch, causing studies to not appear on Discovery. ([#1676](https://github.com/uc-cdis/data-portal/pull/1676)) 

#### Improvements
  - Updated language to be more clear to users. ([#1728](https://github.com/uc-cdis/data-portal/pull/1728)) 
  - Updated language to be more clear to users. ([#1729](https://github.com/uc-cdis/data-portal/pull/1729)) 
  - Improves search UX with cache for search restriction selections ([#1718](https://github.com/uc-cdis/data-portal/pull/1718)) 

#### Dependency Updates
  - Bumps [on-headers](https://github.com/jshttp/on-headers) and 
    [compression](https://github.com/expressjs/compression). These dependencies 
    needed to be updated together. (#1717)
  - Bumps [pbkdf2](https://github.com/crypto-browserify/pbkdf2) from 3.1.2 to 
    3.1.3. (#1709)
  - Bumps [sha.js](https://github.com/crypto-browserify/sha.js) from 2.4.11 to 
    2.4.12. (#1723)
  - Bumps [cipher-base](https://github.com/crypto-browserify/cipher-base) from 
    1.0.4 to 1.0.6. (#1722)

