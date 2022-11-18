.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private greylist-max-o mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 6
    .param p1, "i"    # I

    .line 152
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 153
    check-cast v0, Landroid/text/Spanned;

    .line 155
    .local v0, "sp":Landroid/text/Spanned;
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 156
    .local v1, "st":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 158
    .local v2, "en":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 159
    iget-object v3, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    return v3

    .line 162
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 164
    .local v3, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 165
    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->-$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 166
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 167
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 169
    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 170
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    return v5

    .line 164
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "st":I
    .end local v2    # "en":I
    .end local v3    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    .end local v4    # "a":I
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-$$Nest$sfgetDOT()C

    move-result v0

    return v0
.end method

.method public whitelist getChars(II[CI)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .line 191
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 193
    const/4 v0, -0x1

    .local v0, "st":I
    const/4 v1, -0x1

    .line 194
    .local v1, "en":I
    const/4 v2, 0x0

    .line 195
    .local v2, "nvisible":I
    const/4 v3, 0x0

    .local v3, "starts":[I
    const/4 v4, 0x0

    .line 197
    .local v4, "ends":[I
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_1

    .line 198
    check-cast v5, Landroid/text/Spanned;

    .line 200
    .local v5, "sp":Landroid/text/Spanned;
    sget-object v6, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 201
    sget-object v6, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 203
    const/4 v6, 0x0

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v7

    const-class v8, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 204
    .local v6, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v2, v6

    .line 205
    new-array v3, v2, [I

    .line 206
    new-array v4, v2, [I

    .line 208
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_1

    .line 209
    aget-object v8, v6, v7

    invoke-static {v8}, Landroid/text/method/PasswordTransformationMethod$Visible;->-$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 210
    aget-object v8, v6, v7

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    aput v8, v3, v7

    .line 211
    aget-object v8, v6, v7

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    aput v8, v4, v7

    .line 208
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 216
    .end local v5    # "sp":Landroid/text/Spanned;
    .end local v6    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    .end local v7    # "i":I
    :cond_1
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, p2, :cond_6

    .line 217
    if-lt v5, v0, :cond_2

    if-lt v5, v1, :cond_5

    .line 218
    :cond_2
    const/4 v6, 0x0

    .line 220
    .local v6, "visible":Z
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    if-ge v7, v2, :cond_4

    .line 221
    aget v8, v3, v7

    if-lt v5, v8, :cond_3

    aget v8, v4, v7

    if-ge v5, v8, :cond_3

    .line 222
    const/4 v6, 0x1

    .line 223
    goto :goto_3

    .line 220
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 227
    .end local v7    # "a":I
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 228
    sub-int v7, v5, p1

    add-int/2addr v7, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-$$Nest$sfgetDOT()C

    move-result v8

    aput-char v8, p3, v7

    .line 216
    .end local v6    # "visible":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method public whitelist test-api length()I
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 180
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 182
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 183
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
