.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

.field final synthetic blacklist val$forceDeactivateSim:Z

.field final synthetic blacklist val$slotId:I


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 839
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$slotId:I

    iput-boolean p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$forceDeactivateSim:Z

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 842
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$slotId:I

    iget-boolean v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$forceDeactivateSim:Z

    .line 843
    invoke-virtual {v0, v1, v2}, Landroid/service/euicc/EuiccService;->onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    move-result-object v0

    .line 846
    .local v0, "result":Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;->onComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    goto :goto_0

    .line 847
    :catch_0
    move-exception v1

    .line 850
    :goto_0
    return-void
.end method
