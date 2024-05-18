<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('home')) ? '' : 'collapsed' }}" href="/">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('users')) || (request()->is('users/create')) ? '' : 'collapsed' }}" data-bs-target="#users-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Manage User</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="users-nav" class="nav-content collapse {{ (request()->is('users')) || (request()->is('users/create')) ? 'show' : '' }}" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="{{ route('users.index') }}" class="{{ (request()->is('users')) ? 'active' : '' }}">
                        <i class="bi bi-circle"></i><span>View User</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('users.create') }}" class="{{ (request()->is('users/create')) ? 'active' : '' }}">
                        <i class="bi bi-circle"></i><span>Add User</span>
                    </a>
                </li>
            </ul>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('roles')) || (request()->is('roles/create')) ? '' : 'collapsed' }}" data-bs-target="#roles-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Manage Roles</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="roles-nav" class="nav-content collapse {{ (request()->is('roles')) || (request()->is('roles/create')) ? 'show' : '' }}" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="{{ route('roles.index') }}" class="{{ (request()->is('roles')) ? 'active' : '' }}">
                        <i class="bi bi-circle"></i><span>View Role</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('roles.create') }}" class="{{ (request()->is('roles/create')) ? 'active' : '' }}">
                        <i class="bi bi-circle"></i><span>Add Role</span>
                    </a>
                </li>
            </ul>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('upload')) ? '' : 'collapsed' }}" href="{{ route('home') }}">
                <i class="bi bi-grid"></i>
                <span>Upload Data</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('sampling')) ? '' : 'collapsed' }}" href="{{ route('home') }}">
                <i class="bi bi-grid"></i>
                <span>View Data Sampling</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('chart')) ? '' : 'collapsed' }}" href="{{ route('home') }}">
                <i class="bi bi-grid"></i>
                <span>View Chart</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('export')) ? '' : 'collapsed' }}" href="{{ route('home') }}">
                <i class="bi bi-grid"></i>
                <span>Export</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('learning')) ? '' : 'collapsed' }}" href="{{ route('home') }}">
                <i class="bi bi-grid"></i>
                <span>Learning</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link {{ (request()->is('backup')) ? '' : 'collapsed' }}" href="{{ route('home') }}">
                <i class="bi bi-grid"></i>
                <span>Backup</span>
            </a>
        </li>

        
    </ul>

</aside><!-- End Sidebar-->