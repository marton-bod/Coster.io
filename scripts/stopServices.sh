echo "Shutting down Spring boot apps."
taskkill -F //PID $(jps -v | grep "maven.multiModuleProjectDirectory=.*user_management_svc" | cut -d" " -f1)
taskkill -F //PID $(jps -v | grep "maven.multiModuleProjectDirectory=.*expense_svc" | cut -d" " -f1)
taskkill -F //PID $(jps -v | grep "maven.multiModuleProjectDirectory=.*dashboard_svc" | cut -d" " -f1)
echo "Shut down complete."