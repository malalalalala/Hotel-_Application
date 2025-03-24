import { render, screen } from '@testing-library/react';
import {MemoryRouter as Router } from 'react-router-dom';
import React from 'react';
import Logo from './Logo'

describe('<Logo />', () => {
    test('Should render the Logo component', () => {
      render(
        <Router>
          <Logo />
        </Router>
      );
    });
  });

