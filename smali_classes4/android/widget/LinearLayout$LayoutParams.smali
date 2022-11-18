.class public Landroid/widget/LinearLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public whitelist gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800003
                to = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800005
                to = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field public whitelist weight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2049
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2050
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2051
    return-void
.end method

.method public constructor whitelist <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "weight"    # F

    .line 2064
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2065
    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2066
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2035
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2036
    sget-object v1, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    .line 2037
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2039
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2040
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2042
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2043
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2072
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2073
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2079
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2080
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 2089
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2010
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2091
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2092
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2093
    return-void
.end method


# virtual methods
.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LinearLayout.LayoutParams={width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/LinearLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2098
    invoke-static {v1}, Landroid/widget/LinearLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2097
    return-object v0
.end method

.method protected greylist encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2105
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2107
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const-string/jumbo v1, "layout:weight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 2108
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-string/jumbo v1, "layout:gravity"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2109
    return-void
.end method
