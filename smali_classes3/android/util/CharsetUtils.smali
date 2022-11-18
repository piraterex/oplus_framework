.class public Landroid/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist fromModifiedUtf8Bytes(JII)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist toModifiedUtf8Bytes(Ljava/lang/String;IJII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist toModifiedUtf8Bytes(Ljava/lang/String;JII)I
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # J
    .param p3, "destOff"    # I
    .param p4, "destLen"    # I

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;IJII)I

    move-result v0

    return v0
.end method
