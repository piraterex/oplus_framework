.class public final Landroid/inputmethodservice/ImsConfigurationTracker;
.super Ljava/lang/Object;
.source "ImsConfigurationTracker.java"


# static fields
.field private static final blacklist CONFIG_CHANGED:I = -0x1


# instance fields
.field private blacklist mHandledConfigChanges:I

.field private blacklist mInitialized:Z

.field private blacklist mLastKnownConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 46
    iput-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public blacklist onBindInput(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 66
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 70
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 72
    :cond_1
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "resetStateForNewConfigurationRunner"    # Ljava/lang/Runnable;

    .line 88
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 95
    .local v0, "diff":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    not-int v1, v1

    and-int/2addr v1, v0

    .line 96
    .local v1, "unhandledDiff":I
    if-eqz v1, :cond_2

    .line 97
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 99
    :cond_2
    if-eqz v0, :cond_3

    .line 100
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 102
    :cond_3
    return-void
.end method

.method public blacklist onInitialize(I)V
    .locals 3
    .param p1, "handledConfigChanges"    # I

    .line 56
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "onInitialize can be called only once."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 57
    iput-boolean v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    .line 58
    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 59
    return-void
.end method

.method public blacklist setHandledConfigChanges(I)V
    .locals 0
    .param p1, "configChanges"    # I

    .line 79
    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 80
    return-void
.end method
