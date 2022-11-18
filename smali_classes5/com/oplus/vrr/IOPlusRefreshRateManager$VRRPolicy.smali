.class public Lcom/oplus/vrr/IOPlusRefreshRateManager$VRRPolicy;
.super Ljava/lang/Object;
.source "IOPlusRefreshRateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vrr/IOPlusRefreshRateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VRRPolicy"
.end annotation


# static fields
.field public static final whitelist POLICY_DEFAULT:I = 0x0

.field public static final whitelist POLICY_FACTORY:I = 0x5

.field public static final whitelist POLICY_FOD:I = 0x4

.field public static final whitelist POLICY_INVALID:I = -0x1

.field public static final whitelist POLICY_MEMC:I = 0x3

.field public static final whitelist POLICY_OSYNC:I = 0x2

.field public static final whitelist POLICY_SYSTEM:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 60
    if-nez p0, :cond_0

    const-string v0, "POLICY_DEFAULT"

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "POLICY_SYSTEM"

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "POLICY_OSYNC"

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "POLICY_MEMC"

    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "POLICY_FACTORY"

    goto :goto_0

    .line 65
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const-string v0, "POLICY_FOD"

    goto :goto_0

    :cond_5
    const-string v0, "POLICY_INVALID"

    .line 60
    :goto_0
    return-object v0
.end method
