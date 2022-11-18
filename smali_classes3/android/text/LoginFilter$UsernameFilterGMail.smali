.class public Landroid/text/LoginFilter$UsernameFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGMail"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    .line 146
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist isAllowed(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 152
    const/4 v0, 0x1

    const/16 v1, 0x30

    if-gt v1, p1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 153
    return v0

    .line 154
    :cond_0
    const/16 v1, 0x61

    if-gt v1, p1, :cond_1

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    .line 155
    return v0

    .line 156
    :cond_1
    const/16 v1, 0x41

    if-gt v1, p1, :cond_2

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_2

    .line 157
    return v0

    .line 158
    :cond_2
    const/16 v1, 0x2e

    if-ne v1, p1, :cond_3

    .line 159
    return v0

    .line 160
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
