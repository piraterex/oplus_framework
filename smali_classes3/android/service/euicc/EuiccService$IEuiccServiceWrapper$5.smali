.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

.field final synthetic blacklist val$forceDeactivateSim:Z

.field final synthetic blacklist val$slotId:I

.field final synthetic blacklist val$subscription:Landroid/telephony/euicc/DownloadableSubscription;


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .line 821
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$forceDeactivateSim:Z

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 824
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$slotId:I

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$forceDeactivateSim:Z

    .line 825
    invoke-virtual {v0, v1, v2, v3}, Landroid/service/euicc/EuiccService;->onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    move-result-object v0

    .line 828
    .local v0, "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;->onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    goto :goto_0

    .line 829
    :catch_0
    move-exception v1

    .line 832
    :goto_0
    return-void
.end method
