import React from 'react'
import { Router } from 'react-router-dom'
import { render, screen } from '@testing-library/react'
import Login from './Login'
import { createMemoryHistory } from 'history'


const MockLoginForm = () => {
	const history = createMemoryHistory()
	return (
			<Router
				location={history.location}
				navigator={history}
				pathname='/login'
			>
				<Login />
			</Router>
	)
}

describe('<Login />', () => {
    const setup = () => {
        return render(    
            <MockLoginForm />
            )
      };

	beforeEach(() => {
        setup()  
	})

	it('renders without crashig', async () => {
		const loginButton = screen.getByRole('button', {name: 'Ingresar'})
		expect(loginButton).toBeInTheDocument
	})

	it('renders name and password inputs', () => {
		const loginInputs = screen.getAllByLabelText(
			/[correo electrónico, contraseña]/i
		)
		expect(loginInputs).toHaveLength(2)
	})

})