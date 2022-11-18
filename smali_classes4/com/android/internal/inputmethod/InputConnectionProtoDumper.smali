.class public final Lcom/android/internal/inputmethod/InputConnectionProtoDumper;
.super Ljava/lang/Object;
.source "InputConnectionProtoDumper.java"


# static fields
.field public static final blacklist DUMP_TEXT:Z = false

.field static final blacklist TAG:Ljava/lang/String; = "InputConnectionProtoDumper"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildGetCursorCapsModeProto(II)[B
    .locals 5
    .param p0, "reqModes"    # I
    .param p1, "result"    # I

    .line 188
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 189
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 190
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 195
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .locals 10
    .param p0, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p1, "flags"    # I
    .param p2, "result"    # Landroid/view/inputmethod/ExtractedText;

    .line 217
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 218
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 219
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 220
    .local v3, "token_request":J
    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    const-wide v6, 0x10500000001L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 221
    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const-wide v6, 0x10500000002L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 222
    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    const-wide v8, 0x10500000003L

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 223
    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 224
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 225
    invoke-virtual {v0, v6, v7, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 226
    if-nez p2, :cond_0

    .line 227
    const-wide v5, 0x10900000003L

    const-string/jumbo v7, "null result"

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 231
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 232
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    return-object v5
.end method

.method public static blacklist buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B
    .locals 6
    .param p0, "flags"    # I
    .param p1, "result"    # Ljava/lang/CharSequence;

    .line 122
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 123
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 124
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 125
    if-nez p1, :cond_0

    .line 126
    const-wide v3, 0x10900000002L

    const-string/jumbo v5, "null result"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 130
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 131
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 8
    .param p0, "beforeLength"    # I
    .param p1, "afterLength"    # I
    .param p2, "flags"    # I
    .param p3, "result"    # Landroid/view/inputmethod/SurroundingText;

    .line 153
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 154
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 155
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 156
    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 157
    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 158
    if-nez p3, :cond_0

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 160
    .local v1, "token_result":J
    const-wide v5, 0x10900000001L

    const-string/jumbo v7, "null result"

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 172
    .end local v1    # "token_result":J
    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 173
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B
    .locals 6
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 66
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 67
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 68
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 69
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 70
    if-nez p2, :cond_0

    .line 71
    const-wide v3, 0x10900000003L

    const-string/jumbo v5, "null result"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 76
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B
    .locals 6
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 94
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 95
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 96
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 97
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 98
    if-nez p2, :cond_0

    .line 99
    const-wide v3, 0x10900000003L

    const-string/jumbo v5, "null result"

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 104
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method
