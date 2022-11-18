.class Landroid/text/TextLine$TextLineWrapper;
.super Ljava/lang/Object;
.source "TextLine.java"

# interfaces
.implements Landroid/text/ITextLineWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextLineWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/text/TextLine;


# direct methods
.method private constructor blacklist <init>(Landroid/text/TextLine;)V
    .locals 0

    .line 1504
    iput-object p1, p0, Landroid/text/TextLine$TextLineWrapper;->this$0:Landroid/text/TextLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/TextLine;Landroid/text/TextLine$TextLineWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/TextLine$TextLineWrapper;-><init>(Landroid/text/TextLine;)V

    return-void
.end method


# virtual methods
.method public blacklist setAddedWidthForJustify(F)V
    .locals 1
    .param p1, "value"    # F

    .line 1507
    iget-object v0, p0, Landroid/text/TextLine$TextLineWrapper;->this$0:Landroid/text/TextLine;

    invoke-static {v0, p1}, Landroid/text/TextLine;->-$$Nest$fputmAddedWidthForJustify(Landroid/text/TextLine;F)V

    .line 1508
    return-void
.end method

.method public blacklist setIsJustifying(Z)V
    .locals 1
    .param p1, "isJustifying"    # Z

    .line 1511
    iget-object v0, p0, Landroid/text/TextLine$TextLineWrapper;->this$0:Landroid/text/TextLine;

    invoke-static {v0, p1}, Landroid/text/TextLine;->-$$Nest$fputmIsJustifying(Landroid/text/TextLine;Z)V

    .line 1512
    return-void
.end method
