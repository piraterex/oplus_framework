.class public Lcom/android/internal/compat/AndroidBuildClassifier;
.super Ljava/lang/Object;
.source "AndroidBuildClassifier.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDebuggableBuild()Z
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public blacklist isFinalBuild()Z
    .locals 2

    .line 32
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist platformTargetSdk()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 42
    :cond_0
    const/16 v0, 0x2710

    return v0
.end method
