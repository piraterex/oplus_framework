.class public Landroid/telephony/ims/ProvisioningManager$Callback;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;
    }
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    new-instance v0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback;Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback;->mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;
    .locals 1

    .line 965
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback;->mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    return-object v0
.end method

.method public whitelist onProvisioningIntChanged(II)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 952
    return-void
.end method

.method public whitelist onProvisioningStringChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 961
    return-void
.end method

.method public blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 970
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback;->mBinder:Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->-$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;Ljava/util/concurrent/Executor;)V

    .line 971
    return-void
.end method
