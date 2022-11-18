.class public final Landroid/content/pm/parsing/result/ParseInput$DeferredError;
.super Ljava/lang/Object;
.source "ParseInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/parsing/result/ParseInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeferredError"
.end annotation


# static fields
.field public static final blacklist EMPTY_INTENT_ACTION_CATEGORY:J = 0x9029125L

.field public static final blacklist MISSING_APP_TAG:J = 0x8fcab42L

.field public static final blacklist MISSING_EXPORTED_FLAG:J = 0x8f45e27L

.field public static final blacklist RESOURCES_ARSC_COMPRESSED:J = 0x7e97bf3L


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTargetSdkForChange(J)I
    .locals 2
    .param p0, "changeId"    # J

    .line 92
    const-wide/32 v0, 0x8fcab42

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x9029125

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x7e97bf3

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    const-wide/32 v0, 0x8f45e27

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 99
    const/16 v0, 0x1e

    return v0

    .line 102
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 95
    :cond_2
    :goto_0
    const/16 v0, 0x1d

    return v0
.end method
