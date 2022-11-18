.class Landroid/text/HtmlToSpannedConverter$Foreground;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Foreground"
.end annotation


# instance fields
.field private blacklist mForegroundColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmForegroundColor(Landroid/text/HtmlToSpannedConverter$Foreground;)I
    .locals 0

    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "foregroundColor"    # I

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    .line 1330
    return-void
.end method
