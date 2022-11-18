.class Lcom/android/server/SystemConfig$SystemConfigStaticWrapper;
.super Ljava/lang/Object;
.source "SystemConfig.java"

# interfaces
.implements Lcom/android/server/ISystemConfigStaticWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemConfigStaticWrapper"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/SystemConfig$SystemConfigStaticWrapper-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SystemConfig$SystemConfigStaticWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAllowAllFlag()I
    .locals 1

    .line 1998
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAllowFeaturesFlag()I
    .locals 1

    .line 1993
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAllowPermissionsFlag()I
    .locals 1

    .line 1983
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getAllowPrivAppPermissionsFlag()I
    .locals 1

    .line 1988
    const/16 v0, 0x10

    return v0
.end method
