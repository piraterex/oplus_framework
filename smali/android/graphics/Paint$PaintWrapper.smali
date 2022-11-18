.class Landroid/graphics/Paint$PaintWrapper;
.super Ljava/lang/Object;
.source "Paint.java"

# interfaces
.implements Landroid/graphics/IPaintWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaintWrapper"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PaintWrapper"


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/Paint;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/Paint;)V
    .locals 0

    .line 3450
    iput-object p1, p0, Landroid/graphics/Paint$PaintWrapper;->this$0:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Paint;Landroid/graphics/Paint$PaintWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/Paint$PaintWrapper;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public blacklist getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 3456
    iget-object v0, p0, Landroid/graphics/Paint$PaintWrapper;->this$0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSetTypeface(JJ)V
    .locals 0
    .param p1, "paintStr"    # J
    .param p3, "typefaceStr"    # J

    .line 3480
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Paint;->-$$Nest$smnSetTypeface(JJ)V

    .line 3481
    return-void
.end method

.method public blacklist getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 3468
    iget-object v0, p0, Landroid/graphics/Paint$PaintWrapper;->this$0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFontVariationSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 3462
    iget-object v0, p0, Landroid/graphics/Paint$PaintWrapper;->this$0:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Landroid/graphics/Paint;->-$$Nest$fputmFontVariationSettings(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 3463
    return-void
.end method

.method public blacklist setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 3474
    iget-object v0, p0, Landroid/graphics/Paint$PaintWrapper;->this$0:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Landroid/graphics/Paint;->-$$Nest$fputmTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 3475
    return-void
.end method
