.class public abstract Landroid/companion/CompanionDeviceManager$Callback;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .locals 0
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 260
    return-void
.end method

.method public whitelist onAssociationPending(Landroid/content/IntentSender;)V
    .locals 0
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 252
    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onDeviceFound(Landroid/content/IntentSender;)V

    .line 253
    return-void
.end method

.method public whitelist onDeviceFound(Landroid/content/IntentSender;)V
    .locals 0
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    return-void
.end method

.method public abstract whitelist onFailure(Ljava/lang/CharSequence;)V
.end method
