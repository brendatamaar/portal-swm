<nav class="sidebar sidebar-offcanvas dynamic-active-class-disabled" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile not-navigation-link">
      <div class="nav-link">
        <div class="user-wrapper">
          <div class="profile-image">
            <img src="{{ url('assets/images/faces/face99.jpg') }}" alt="profile image">
          </div>
          <div class="text-wrapper">
            <p class="profile-name">Ilham Fahmi A</p>
            <div class="dropdown" data-display="static">
              <a href="#" class="nav-link d-flex user-switch-dropdown-toggler" id="UsersettingsDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <small class="designation text-muted">Store Warehouse Management</small>
                <span class="status-indicator online"></span>
              </a>
              <div class="dropdown-menu" aria-labelledby="UsersettingsDropdown">
                <a class="dropdown-item p-0">
                  <div class="d-flex border-bottom">
                    <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                      <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
                    </div>
                    <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
                      <i class="mdi mdi-account-outline mr-0 text-gray"></i>
                    </div>
                    <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                      <i class="mdi mdi-alarm-check mr-0 text-gray"></i>
                    </div>
                  </div>
                </a>
                <a class="dropdown-item mt-2"> Manage Accounts </a>
                <a class="dropdown-item"> Change Password </a>
                <a class="dropdown-item"> Check Inbox </a>
                <a class="dropdown-item"> Sign Out </a>
              </div>
            </div>
          </div>
        </div>
        <button class="btn btn-success btn-block">Upload All Data Report <i class="mdi mdi-plus"></i>
        </button>
      </div>
    </li>
    <li class="nav-item {{ active_class(['/']) }}">
      <a class="nav-link" href="{{ url('/') }}">
        <i class="menu-icon mdi mdi-television"></i>
        <span class="menu-title">Dashboard All Report</span>
      </a>
    </li>
    <li class="nav-item {{ active_class(['basic-ui/*']) }}">
      <a class="nav-link" data-toggle="collapse" href="#basic-ui" aria-expanded="{{ is_active_route(['basic-ui/*']) }}" aria-controls="basic-ui">
        <i class="menu-icon mdi mdi-chart-line"></i>
        <span class="menu-title">Detail Data Repots</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse {{ show_class(['basic-ui/*']) }}" id="basic-ui">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item {{ active_class(['basic-ui/buttons']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/buttons') }}">Summary Stock Opname Store</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/dropdowns']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/dropdowns') }}">Accuracy WMS vs NAV</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/typography') }}">Accuracy by Location WMS</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/typography') }}">Corecction Receiving</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/typography') }}">Accuracy Putaway</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/typography') }}">Stock Minus</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/typography') }}">Report Breakage</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui/typography') }}">Report Failed Transfer</a>
          </li>
        </ul>
      </div>
    </li>

    <li class="nav-item {{ active_class(['basic-ui2/*']) }}">
      <a class="nav-link" data-toggle="collapse" href="#basic-ui2" aria-expanded="{{ is_active_route(['basic-ui2/*']) }}" aria-controls="basic-ui2">
        <i class="menu-icon mdi mdi-sync-alert"></i>
        <span class="menu-title">Cycle Count</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse {{ show_class(['basic-ui2/*']) }}" id="basic-ui2">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item {{ active_class(['basic-ui2/buttons']) }}">
            <a class="nav-link" href="{{ url('/basic-ui2/buttons') }}">Upload Data Cycle Count</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui2/dropdowns']) }}">
            <a class="nav-link" href="{{ url('/basic-ui2/dropdowns') }}">View Data Cycle Count</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui2/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui2/typography') }}">Progress Cycle Count</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui2/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui2/typography') }}">Report Cycle Count</a>
          </li>
        </ul>
      </div>
    </li>
    <li class="nav-item {{ active_class(['basic-ui3/*']) }}">
      <a class="nav-link" data-toggle="collapse" href="#basic-ui3" aria-expanded="{{ is_active_route(['basic-ui3/*']) }}" aria-controls="basic-ui3">
        <i class="menu-icon mdi mdi-bookmark"></i>
        <span class="menu-title">Sampling</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse {{ show_class(['basic-ui3/*']) }}" id="basic-ui3">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item {{ active_class(['basic-ui3/buttons']) }}">
            <a class="nav-link" href="{{ url('/basic-ui3/buttons') }}">Upload Data Sampling</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui3/dropdowns']) }}"> 
            <a class="nav-link" href="{{ url('/basic-ui3/dropdowns') }}">View Data Upload Sampling</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui3/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui3/typography') }}">Progress Sampling</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui3/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui3/typography') }}">Report Sampling</a>
          </li>
        </ul>
      </div>
    </li>
    <li class="nav-item {{ active_class(['basic-ui4/*']) }}">
      <a class="nav-link" data-toggle="collapse" href="#basic-ui4" aria-expanded="{{ is_active_route(['basic-ui3/*']) }}" aria-controls="basic-ui4">
        <i class="menu-icon mdi mdi-qrcode"></i>
        <span class="menu-title">CRUMEN</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse {{ show_class(['basic-ui4/*']) }}" id="basic-ui4">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item {{ active_class(['basic-ui4/buttons']) }}">
            <a class="nav-link" href="{{ url('/basic-ui4/buttons') }}">Cetak Barcode Lokasi</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui4/dropdowns']) }}"> 
            <a class="nav-link" href="{{ url('/basic-ui4/dropdowns') }}">Cetak Mutasi Tagbin C/W</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui4/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui4/typography') }}">Cetak Mutasi Tagbin D</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui4/typography']) }}">
            <a class="nav-link" href="{{ url('/basic-ui4/typography') }}">Cetak Crystal Report</a>
          </li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link">
        <i class="menu-icon mdi mdi-account"></i>
        <span class="menu-title">All Data Users</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link">
        <i class="menu-icon mdi mdi-store"></i>
        <span class="menu-title">Store</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link">
        <i class="menu-icon mdi mdi-key"></i>
        <span class="menu-title">Roles</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link">
        <i class="menu-icon mdi mdi-history"></i>
        <span class="menu-title">History, Backup & Export</span>
      </a>
    </li>
    <li class="nav-item {{ active_class(['basic-ui5/*']) }}">
      <a class="nav-link" data-toggle="collapse" href="#basic-ui5" aria-expanded="{{ is_active_route(['basic-ui3/*']) }}" aria-controls="basic-ui5">
        <i class="menu-icon mdi mdi-plus-box"></i>
        <span class="menu-title">Other Data</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse {{ show_class(['basic-ui5/*']) }}" id="basic-ui5">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item {{ active_class(['basic-ui5/buttons']) }}">
            <a class="nav-link" href="{{ url('/basic-ui5/buttons') }}">Data Let You Know</a>
          </li>
          <li class="nav-item {{ active_class(['basic-ui5/dropdowns']) }}"> 
            <a class="nav-link" href="{{ url('/basic-ui5/dropdowns') }}">Data Leaning by Video</a>
          </li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link">
        <i class="menu-icon mdi mdi-comment-question-outline"></i>
        <span class="menu-title">Let You Know</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link">
        <i class="menu-icon mdi mdi-video"></i>
        <span class="menu-title">Leaning by Video</span>
      </a>
    </li>
    <li class="nav-item {{ active_class(['icons/material']) }}">
      <a class="nav-link" href="{{ url('/icons/material') }}">
        <i class="menu-icon mdi mdi-emoticon"></i>
        <span class="menu-title">Icons</span>
      </a>
    </li>
  </ul>
</nav>