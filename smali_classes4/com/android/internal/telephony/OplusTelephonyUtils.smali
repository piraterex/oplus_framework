.class public Lcom/android/internal/telephony/OplusTelephonyUtils;
.super Ljava/lang/Object;
.source "OplusTelephonyUtils.java"


# static fields
.field public static final blacklist isMTKPlatform:Z

.field public static final blacklist isQcomPlatform:Z

.field private static final blacklist isUSSUnifyDevice:Z

.field private static final blacklist isUSTUnifyDevice:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 24
    nop

    .line 25
    const-string/jumbo v0, "ro.boot.hardware"

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/OplusTelephonyUtils;->isQcomPlatform:Z

    .line 26
    nop

    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/OplusTelephonyUtils;->isMTKPlatform:Z

    .line 28
    nop

    .line 29
    const-string/jumbo v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/OplusTelephonyUtils;->isUSSUnifyDevice:Z

    .line 30
    nop

    .line 31
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tmo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/OplusTelephonyUtils;->isUSTUnifyDevice:Z

    .line 30
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isMTKPlatform()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/internal/telephony/OplusTelephonyUtils;->isMTKPlatform:Z

    return v0
.end method

.method public static blacklist isQcomPlatform()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/OplusTelephonyUtils;->isQcomPlatform:Z

    return v0
.end method
