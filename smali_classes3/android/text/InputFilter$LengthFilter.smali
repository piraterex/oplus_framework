.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private final greylist mMax:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0
    .param p1, "max"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 173
    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 177
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 178
    .local v0, "keep":I
    const-string v1, ""

    if-gtz v0, :cond_0

    .line 179
    return-object v1

    .line 180
    :cond_0
    sub-int v2, p3, p2

    if-lt v0, v2, :cond_1

    .line 181
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_1
    add-int/2addr v0, p2

    .line 184
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    add-int/lit8 v0, v0, -0x1

    .line 186
    if-ne v0, p2, :cond_2

    .line 187
    return-object v1

    .line 190
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getMax()I
    .locals 1

    .line 198
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    return v0
.end method
