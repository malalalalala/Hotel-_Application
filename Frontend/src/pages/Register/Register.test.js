import React from 'react'
import { Router } from 'react-router-dom'
import { render, screen } from '@testing-library/react'
import Register from './Register'
import { createMemoryHistory } from 'history'


const MockRegisterForm = () => {
	const history = createMemoryHistory()
	return (
			<Router
				location={history.location}
				navigator={history}
				pathname='/register'
			>
				<Register />
			</Router>
	)
}

describe('<Register />', () => {
    const setup = () => {
        return render(    
            <MockRegisterForm />
            )
      };

	beforeEach(() => {
        setup()  
	})

	it('renders without crashig', async () => {
		const registerButton = screen.getByRole('button', {name: 'Crear cuenta'})
		expect(registerButton).toBeInTheDocument
	})

	it('renders all inputs', () => {
		const registerInputs = screen.getAllByLabelText(
			/[nombre, apellido, correo electrónico, contraseña, confirmar Contraseña]/i
		)
		expect(registerInputs).toHaveLength(5)
	})

})