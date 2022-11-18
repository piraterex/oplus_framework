.class Landroid/text/HtmlToSpannedConverter$Newline;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Newline"
.end annotation


# instance fields
.field private blacklist mNumNewlines:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNumNewlines(Landroid/text/HtmlToSpannedConverter$Newline;)I
    .locals 0

    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Newline;->mNumNewlines:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "numNewlines"    # I

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Newline;->mNumNewlines:I

    .line 1354
    return-void
.end method
