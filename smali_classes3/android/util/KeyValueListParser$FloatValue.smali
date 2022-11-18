.class public Landroid/util/KeyValueListParser$FloatValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:F

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    .line 386
    iput p2, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    .line 387
    iput p2, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 388
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 421
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 422
    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 426
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 427
    return-void
.end method

.method public blacklist getDefaultValue()F
    .locals 1

    .line 402
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    return v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()F
    .locals 1

    .line 407
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    return v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .locals 2
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 392
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    iget v1, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 393
    return-void
.end method

.method public blacklist setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .line 412
    iput p1, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 413
    return-void
.end method
