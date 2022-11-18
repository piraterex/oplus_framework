.class public final Landroid/media/tv/tuner/TunerVersionChecker;
.super Ljava/lang/Object;
.source "TunerVersionChecker.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/TunerVersionChecker$TunerVersion;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TunerVersionChecker"

.field public static final whitelist TUNER_VERSION_1_0:I = 0x10000

.field public static final whitelist TUNER_VERSION_1_1:I = 0x10001

.field public static final whitelist TUNER_VERSION_2_0:I = 0x20000

.field public static final whitelist TUNER_VERSION_UNKNOWN:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkHigherOrEqualVersionTo(ILjava/lang/String;)Z
    .locals 3
    .param p0, "version"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 136
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Tuner version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v1

    invoke-static {v1}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v2

    invoke-static {v2}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not support "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "TunerVersionChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist checkSupportVersion(ILjava/lang/String;)Z
    .locals 3
    .param p0, "version"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->supportTunerVersion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Tuner version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v1

    invoke-static {v1}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v2

    invoke-static {v2}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not support "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "TunerVersionChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getMajorVersion(I)I
    .locals 1
    .param p0, "version"    # I

    .line 117
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static blacklist getMinorVersion(I)I
    .locals 1
    .param p0, "version"    # I

    .line 130
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist getTunerVersion()I
    .locals 1

    .line 70
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v0

    return v0
.end method

.method public static blacklist isHigherOrEqualVersionTo(I)Z
    .locals 2
    .param p0, "version"    # I

    .line 103
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v0

    .line 104
    .local v0, "currentVersion":I
    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist supportTunerVersion(I)Z
    .locals 3
    .param p0, "version"    # I

    .line 88
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v0

    .line 89
    .local v0, "currentVersion":I
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v1

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 89
    :goto_0
    return v1
.end method
