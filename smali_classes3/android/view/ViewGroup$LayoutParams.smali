.class public Landroid/view/ViewGroup$LayoutParams;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final whitelist FILL_PARENT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MATCH_PARENT:I = -0x1

.field public static final whitelist WRAP_CONTENT:I = -0x2


# instance fields
.field public whitelist height:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field

.field public whitelist layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

.field public whitelist width:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method constructor greylist <init>()V
    .locals 0

    .line 8321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8322
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 8301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8302
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8303
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8304
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 8282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8283
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8284
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 8287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 8288
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8312
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8313
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8314
    return-void
.end method

.method protected static greylist-max-o sizeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "size"    # I

    .line 8383
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    .line 8384
    const-string/jumbo v0, "wrap-content"

    return-object v0

    .line 8386
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 8387
    const-string/jumbo v0, "match-parent"

    return-object v0

    .line 8389
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .line 8359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8360
    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8359
    return-object v0
.end method

.method greylist-max-o encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 0
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 8394
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    .line 8395
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 8396
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    .line 8397
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 8401
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8402
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 8403
    return-void
.end method

.method public greylist-max-o onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 8372
    return-void
.end method

.method public whitelist resolveLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 8347
    return-void
.end method

.method protected whitelist setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .line 8332
    const-string/jumbo v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8333
    const-string/jumbo v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8334
    return-void
.end method
