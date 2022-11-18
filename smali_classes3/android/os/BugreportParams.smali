.class public final Landroid/os/BugreportParams;
.super Ljava/lang/Object;
.source "BugreportParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BugreportParams$BugreportMode;
    }
.end annotation


# static fields
.field public static final whitelist BUGREPORT_MODE_FULL:I = 0x0

.field public static final whitelist BUGREPORT_MODE_INTERACTIVE:I = 0x1

.field public static final whitelist BUGREPORT_MODE_REMOTE:I = 0x2

.field public static final whitelist BUGREPORT_MODE_TELEPHONY:I = 0x4

.field public static final whitelist BUGREPORT_MODE_WEAR:I = 0x3

.field public static final whitelist BUGREPORT_MODE_WIFI:I = 0x5


# instance fields
.field private final blacklist mMode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/os/BugreportParams;->mMode:I

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getMode()I
    .locals 1

    .line 39
    iget v0, p0, Landroid/os/BugreportParams;->mMode:I

    return v0
.end method
