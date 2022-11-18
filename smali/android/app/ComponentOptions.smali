.class public Landroid/app/ComponentOptions;
.super Ljava/lang/Object;
.source "ComponentOptions.java"


# static fields
.field public static final blacklist KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowed"

.field public static final blacklist KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED_BY_PERMISSION:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowedByPermission"

.field public static final blacklist PENDING_INTENT_BAL_ALLOWED_DEFAULT:Z = true


# instance fields
.field private blacklist mPendingIntentBalAllowed:Z

.field private blacklist mPendingIntentBalAllowedByPermission:Z


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    .line 52
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 58
    nop

    .line 59
    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 61
    nop

    .line 62
    const-string v0, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    return v0
.end method

.method public blacklist isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return v0
.end method

.method public whitelist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 71
    iput-boolean p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    .line 72
    return-void
.end method

.method public blacklist setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 87
    iput-boolean p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    .line 88
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 3

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "b":Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    iget-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v2, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    :cond_0
    return-object v0
.end method
