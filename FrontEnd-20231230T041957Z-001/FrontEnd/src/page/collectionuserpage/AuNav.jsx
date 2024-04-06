import React from 'react';
import { NavLink } from 'react-router-dom';
import "./AuNav.css";

const AuNav = () => {
  return (

    <nav className="navbar">
    <ul className="nav-list">
      <li className="nav-item">
        <NavLink to="/collection" activeClassName="active-link">Collectio n</NavLink>
      </li>
      <li className="nav-item">
        <NavLink to="/save" activeClassName="active-link">Save</NavLink>
      </li>
      <li className="nav-item">
        <NavLink to="/follows" activeClassName="active-link">Follows</NavLink>
      </li>
      <li className="nav-item">
        <NavLink to="/insight" activeClassName="active-link">Insight</NavLink>
      </li>
      <li className="nav-item">
        <NavLink to="/settings" activeClassName="active-link">Settings</NavLink>
      </li>
    </ul>
  </nav>
  );
};

export default AuNav;
