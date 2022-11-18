.class public final Lvendor/oplus/hardware/rpmh/V1_0/RpmhErrorCode;
.super Ljava/lang/Object;
.source "RpmhErrorCode.java"


# static fields
.field public static final blacklist ERR_FILE_FAILURE_ACCESS:I = -0x80000000

.field public static final blacklist ERR_FILE_FAILURE_OPEN:I = -0x7fffffff

.field public static final blacklist ERR_FILE_FAILURE_READ:I = -0x7ffffffe

.field public static final blacklist ERR_FILE_FAILURE_WRITE:I = -0x7ffffffd

.field public static final blacklist ERR_FILE_NOT_EXIST:I = -0x7ffffffc


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "flipped":I
    const/high16 v2, -0x80000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    .line 33
    const-string v3, "ERR_FILE_FAILURE_ACCESS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/2addr v1, v2

    .line 36
    :cond_0
    const v2, -0x7fffffff

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 37
    const-string v3, "ERR_FILE_FAILURE_OPEN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/2addr v1, v2

    .line 40
    :cond_1
    const v2, -0x7ffffffe

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    .line 41
    const-string v3, "ERR_FILE_FAILURE_READ"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/2addr v1, v2

    .line 44
    :cond_2
    const v2, -0x7ffffffd

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    .line 45
    const-string v3, "ERR_FILE_FAILURE_WRITE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/2addr v1, v2

    .line 48
    :cond_3
    const v2, -0x7ffffffc

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    .line 49
    const-string v3, "ERR_FILE_NOT_EXIST"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/2addr v1, v2

    .line 52
    :cond_4
    if-eq p0, v1, :cond_5

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 11
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 12
    const-string v0, "ERR_FILE_FAILURE_ACCESS"

    return-object v0

    .line 14
    :cond_0
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_1

    .line 15
    const-string v0, "ERR_FILE_FAILURE_OPEN"

    return-object v0

    .line 17
    :cond_1
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_2

    .line 18
    const-string v0, "ERR_FILE_FAILURE_READ"

    return-object v0

    .line 20
    :cond_2
    const v0, -0x7ffffffd

    if-ne p0, v0, :cond_3

    .line 21
    const-string v0, "ERR_FILE_FAILURE_WRITE"

    return-object v0

    .line 23
    :cond_3
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_4

    .line 24
    const-string v0, "ERR_FILE_NOT_EXIST"

    return-object v0

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
