.class public abstract Landroid/companion/CompanionDeviceService;
.super Landroid/app/Service;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceService$Stub;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CompanionDeviceService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.companion.CompanionDeviceService"


# instance fields
.field private final blacklist mRemote:Landroid/companion/CompanionDeviceService$Stub;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    new-instance v0, Landroid/companion/CompanionDeviceService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService$Stub-IA;)V

    iput-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-void
.end method


# virtual methods
.method public final blacklist dispatchMessage(II[B)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B

    .line 178
    const-class v0, Landroid/companion/CompanionDeviceManager;

    .line 179
    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    .line 180
    .local v0, "companionDeviceManager":Landroid/companion/CompanionDeviceManager;
    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/CompanionDeviceManager;->dispatchMessage(II[B)V

    .line 181
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceService;->onBindCompanionDeviceService(Landroid/content/Intent;)V

    .line 212
    iget-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.companion.CompanionDeviceService): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBindCompanionDeviceService(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 225
    return-void
.end method

.method public whitelist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 1
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 190
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public whitelist onDeviceAppeared(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    return-void
.end method

.method public whitelist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 1
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 202
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public whitelist onDeviceDisappeared(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist onDispatchMessage(II[B)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B

    .line 161
    return-void
.end method
