document.addEventListener('DOMContentLoaded', () => {
    validateForm('#registrationForm');
});

const validateForm = formSelector => {
    const formElement = document.querySelector(formSelector);

    const validationOptions = [
        {
            attribute: 'minlength',
            isValid: input => input.value && input.value.length >= parseInt(input.minLength, 10),
            errorMessage: (input, label) => `${label.textContent} needs to be at least ${input.minLength} characters`
        },
        {
            attribute: 'pattern',
            isValid: input => {
                const patternRegex = new RegExp(input.pattern);
                return patternRegex.test(input.value);
            },
            errorMessage: (input, label) => `Not a valid ${label.textContent}`
        },
        {
            attribute: 'match',
            isValid: input => {
                const matchSelector = input.getAttribute('match');
                const matchedElement = formElement.querySelector(`#${matchSelector}`);
                return matchedElement && matchedElement.value.trim() === input.value.trim();
            },
            errorMessage: (input, label) => {
                const matchSelector = input.getAttribute('match');
                const matchedElement = formElement.querySelector(`#${matchSelector}`);
                const matchedLabel = matchedElement.parentElement.parentElement.querySelector('label');
                
                return `${label.textContent} should match ${matchedLabel.textContent}`;
            }
        },
        {
            attribute: 'required',
            isValid: input => input.value.trim() !== '',
            errorMessage: (input, label) => `${label.textContent} is required`
        },
    ];

    const validateSingleFormGroup = formGroup => {
        const label = formGroup.querySelector('label');
        const input = formGroup.querySelector('input, textarea');
        const errorContainer = formGroup.querySelector('.error');
        const errorIcon = formGroup.querySelector('.error-icon');
        const successIcon = formGroup.querySelector('.success-icon');

        let formGroupError = false;
        for (const option of validationOptions) {
            if (input.hasAttribute(option.attribute) && !option.isValid(input)) {
                errorContainer.textContent = option.errorMessage(input, label);
                input.classList.add('border-red-700');
                input.classList.remove('border-green-700');
                successIcon.classList.add('hidden');
                errorIcon.classList.remove('hidden');
                formGroupError = true;
                break;
            }
        }

        if (!formGroupError) {
            errorContainer.textContent = '';
            input.classList.remove('border-red-700');
            input.classList.add('border-green-700');
            successIcon.classList.remove('hidden');
            errorIcon.classList.add('hidden');
        }
    };

    const validateAllFormGroups = formToValidate => {
        const formGroups = Array.from(formToValidate.querySelectorAll('.formGroup'));

        formGroups.forEach(formGroup => {
            validateSingleFormGroup(formGroup);
        });
    };

    formElement.setAttribute('novalidate', '');

    formElement.addEventListener('submit', event => {
        event.preventDefault();
        console.log('Custom validation started');

        validateAllFormGroups(formElement);

        const hasErrors = formElement.querySelectorAll('.border-red-700').length > 0;
        if (!hasErrors) {
            console.log('Form submitted successfully!');
        } else {
            console.log('Form has errors');
        }
    });
    
        const addPhoneBtn = document.getElementById('addPhoneBtn');
        const phoneField = document.getElementById('phoneField');
    
        addPhoneBtn.addEventListener('click', () => {
            phoneField.classList.toggle('hidden');
        });
    


    
    
};
