.class Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;
.super Landroid/util/LruCache;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormatterCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/RelativeDateTimeFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 64
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 65
    return-void
.end method
