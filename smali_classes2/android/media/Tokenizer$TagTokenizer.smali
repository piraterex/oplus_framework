.class Landroid/media/Tokenizer$TagTokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagTokenizer"
.end annotation


# instance fields
.field private blacklist mAnnotation:Ljava/lang/String;

.field private blacklist mAtAnnotation:Z

.field private blacklist mName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor blacklist <init>(Landroid/media/Tokenizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/Tokenizer;

    .line 232
    iput-object p1, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist yield_tag()V
    .locals 5

    .line 278
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmListener(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/Tokenizer$OnTokenListener;->onEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v0

    .line 284
    .local v0, "timestampMs":J
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmListener(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/media/Tokenizer$OnTokenListener;->onTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "timestampMs":J
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid timestamp tag: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tokenizer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v3, "\\s+"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 293
    :cond_2
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 297
    :cond_3
    const/4 v0, 0x0

    .line 298
    .local v0, "classes":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 299
    .local v1, "dotAt":I
    if-ltz v1, :cond_4

    .line 300
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 303
    :cond_4
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmListener(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v4}, Landroid/media/Tokenizer$OnTokenListener;->onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v0    # "classes":[Ljava/lang/String;
    .end local v1    # "dotAt":I
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist start()Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    .line 237
    const-string v0, ""

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    .line 239
    return-object p0
.end method

.method public blacklist tokenize()V
    .locals 7

    .line 244
    iget-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 252
    iget-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\t\u000c >]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "parts":[Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0    # "parts":[Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v3

    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v4}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v6, v0, v5

    .line 258
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 257
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "part":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v4

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    .line 261
    iget-boolean v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-eqz v3, :cond_3

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    goto :goto_2

    .line 264
    :cond_3
    iput-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 268
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "part":Ljava/lang/String;
    :cond_4
    :goto_2
    iput-boolean v1, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    .line 270
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_5

    .line 271
    invoke-direct {p0}, Landroid/media/Tokenizer$TagTokenizer;->yield_tag()V

    .line 272
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmDataTokenizer(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/Tokenizer;->-$$Nest$fputmPhase(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)V

    .line 273
    iget-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    .line 275
    :cond_5
    return-void
.end method
