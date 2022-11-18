.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 991
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput-object p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 995
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 996
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 997
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-virtual {v2, v1}, Landroid/service/euicc/EuiccService;->dump(Ljava/io/PrintWriter;)V

    .line 998
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/euicc/IEuiccServiceDumpResultCallback;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1002
    :goto_0
    return-void
.end method
