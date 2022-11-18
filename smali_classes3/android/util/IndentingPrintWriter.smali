.class public Landroid/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private blacklist mCurrentIndent:[C

.field private blacklist mCurrentLength:I

.field private blacklist mEmptyLine:Z

.field private blacklist mIndentBuilder:Ljava/lang/StringBuilder;

.field private blacklist mSingleChar:[C

.field private final blacklist mSingleIndent:Ljava/lang/String;

.field private final blacklist mWrapLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 56
    const-string v0, "  "

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 65
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "wrapLength"    # I

    .line 75
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 53
    new-array v1, v1, [C

    iput-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    .line 76
    iput-object p2, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 77
    iput p4, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    .line 78
    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    return-void
.end method

.method private blacklist maybeWriteIndent()V
    .locals 3

    .line 242
    iget-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 244
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 251
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist decreaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 3

    .line 130
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 132
    return-object p0
.end method

.method public blacklist increaseIndent()Landroid/util/IndentingPrintWriter;
    .locals 2

    .line 120
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 122
    return-object p0
.end method

.method public blacklist print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 141
    if-nez p2, :cond_0

    .line 142
    const-string/jumbo v0, "null"

    .local v0, "string":Ljava/lang/String;
    goto/16 :goto_0

    .line 143
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1

    .line 145
    move-object v0, p2

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto/16 :goto_0

    .line 146
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2

    .line 147
    move-object v0, p2

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto/16 :goto_0

    .line 148
    .end local v0    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3

    .line 149
    move-object v0, p2

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "string":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4

    .line 151
    move-object v0, p2

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "string":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5

    .line 153
    move-object v0, p2

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0    # "string":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6

    .line 155
    move-object v0, p2

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0    # "string":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7

    .line 157
    move-object v0, p2

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0    # "string":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_8

    .line 159
    move-object v0, p2

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v0    # "string":Ljava/lang/String;
    :cond_8
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "string":Ljava/lang/String;
    :cond_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "string":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 167
    return-object p0
.end method

.method public blacklist printHexInt(Ljava/lang/String;I)Landroid/util/IndentingPrintWriter;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 176
    return-object p0
.end method

.method public whitelist test-api println()V
    .locals 1

    .line 181
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->write(I)V

    .line 182
    return-void
.end method

.method public blacklist setIndent(I)Landroid/util/IndentingPrintWriter;
    .locals 2
    .param p1, "indent"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public blacklist setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 93
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 95
    return-object p0
.end method

.method public whitelist test-api write(I)V
    .locals 3
    .param p1, "c"    # I

    .line 186
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/util/IndentingPrintWriter;->write([CII)V

    .line 188
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 192
    new-array v0, p3, [C

    .line 193
    .local v0, "buf":[C
    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    invoke-virtual {p0, v0, v2, p3}, Landroid/util/IndentingPrintWriter;->write([CII)V

    .line 195
    return-void
.end method

.method public whitelist test-api write([CII)V
    .locals 10
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 199
    iget-object v0, p0, Landroid/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 200
    .local v0, "indentLength":I
    add-int v1, p2, p3

    .line 201
    .local v1, "bufferEnd":I
    move v2, p2

    .line 202
    .local v2, "lineStart":I
    move v3, p2

    .line 205
    .local v3, "lineEnd":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 206
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "lineEnd":I
    .local v4, "lineEnd":I
    aget-char v3, p1, v3

    .line 207
    .local v3, "ch":C
    iget v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    .line 208
    const/4 v5, 0x0

    const/16 v7, 0xa

    if-ne v3, v7, :cond_0

    .line 209
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 210
    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 211
    move v2, v4

    .line 212
    iput-boolean v6, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 213
    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    .line 217
    :cond_0
    iget v8, p0, Landroid/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v8, :cond_2

    iget v9, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    sub-int/2addr v8, v0

    if-lt v9, v8, :cond_2

    .line 218
    iget-boolean v8, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v8, :cond_1

    .line 220
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 221
    iput-boolean v6, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 222
    sub-int v5, v4, v2

    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 225
    :cond_1
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 226
    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 227
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 228
    iput-boolean v6, p0, Landroid/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 229
    move v2, v4

    .line 230
    iput v5, p0, Landroid/util/IndentingPrintWriter;->mCurrentLength:I

    .line 233
    .end local v3    # "ch":C
    :cond_2
    :goto_1
    move v3, v4

    goto :goto_0

    .line 235
    .end local v4    # "lineEnd":I
    .local v3, "lineEnd":I
    :cond_3
    if-eq v2, v3, :cond_4

    .line 236
    invoke-direct {p0}, Landroid/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 237
    sub-int v4, v3, v2

    invoke-super {p0, p1, v2, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 239
    :cond_4
    return-void
.end method
