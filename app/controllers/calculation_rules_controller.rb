class CalculationRulesController < ApplicationController
    
    before_action :set_calculation_rule, only: [:update, :show, :edit, :destroy]
    authorize_resource
    
    def index
        @calculation_rules = CalculationRule.all
    end
    
    def show
    end
    
    def update
        @calculation_rule.update(calculation_rule_params)
        redirect_to calculation_rules_path, success: 'La régle de calcul a bien été modifiée'
    end
    
    def destroy
        @calculation_rule.destroy
        redirect_to calculation_rules_path, success: 'La régle de calcul a bien été supprimée'
    end
    
    def new
        @calculation_rule = CalculationRule.new
    end
    
    def edit
    end
    
    def create
        @calculation_rule = CalculationRule.create(calculation_rule_params)
        redirect_to calculation_rules_path, success: 'La régle de calcul a bien été créé'
    end
    
    private
    
     def calculation_rule_params
         params.require(:calculation_rule).permit(:woodFrameConception)
     end
    
    def set_calculation_rule
        @calculation_rule = CalculationRule.find(params[:id])
    end
    
end
