.class public Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.super Ljava/lang/Object;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapabilityCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;
    }
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;-><init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    return-object v0
.end method

.method public whitelist onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 0
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 207
    return-void
.end method

.method public final blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 218
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->mBinder:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->-$$Nest$msetExecutor(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V

    .line 219
    return-void
.end method
