.class public final Landroid/util/MutableByte;
.super Ljava/lang/Object;
.source "MutableByte.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:B


# direct methods
.method public constructor whitelist <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-byte p1, p0, Landroid/util/MutableByte;->value:B

    .line 28
    return-void
.end method
