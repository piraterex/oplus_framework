.class public abstract Landroid/app/timezone/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/Callback$AsyncResultCode;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_INSTALL_BAD_DISTRO_FORMAT_VERSION:I = 0x3

.field public static final blacklist ERROR_INSTALL_BAD_DISTRO_STRUCTURE:I = 0x2

.field public static final blacklist ERROR_INSTALL_RULES_TOO_OLD:I = 0x4

.field public static final blacklist ERROR_INSTALL_VALIDATION_ERROR:I = 0x5

.field public static final blacklist ERROR_UNKNOWN_FAILURE:I = 0x1

.field public static final blacklist SUCCESS:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onFinished(I)V
.end method
