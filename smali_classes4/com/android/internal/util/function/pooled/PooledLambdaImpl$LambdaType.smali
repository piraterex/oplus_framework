.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.super Ljava/lang/Object;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LambdaType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
    }
.end annotation


# static fields
.field public static final blacklist MASK:I = 0x7f

.field public static final blacklist MASK_ARG_COUNT:I = 0xf

.field public static final blacklist MASK_BIT_COUNT:I = 0x7

.field public static final blacklist MASK_RETURN_TYPE:I = 0x70


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist argCountPrefix(I)Ljava/lang/String;
    .locals 2
    .param p0, "argCount"    # I

    .line 728
    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    .line 742
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 729
    :pswitch_1
    return-object v0

    .line 741
    :pswitch_2
    const-string v0, "Undec"

    return-object v0

    .line 740
    :pswitch_3
    const-string v0, "Dec"

    return-object v0

    .line 739
    :pswitch_4
    const-string v0, "Nona"

    return-object v0

    .line 738
    :pswitch_5
    const-string v0, "Oct"

    return-object v0

    .line 737
    :pswitch_6
    const-string v0, "Hept"

    return-object v0

    .line 736
    :pswitch_7
    const-string v0, "Hex"

    return-object v0

    .line 735
    :pswitch_8
    const-string v0, "Quint"

    return-object v0

    .line 734
    :pswitch_9
    const-string v0, "Quad"

    return-object v0

    .line 733
    :pswitch_a
    const-string v0, "Tri"

    return-object v0

    .line 732
    :pswitch_b
    const-string v0, "Bi"

    return-object v0

    .line 731
    :pswitch_c
    return-object v0

    .line 730
    :pswitch_d
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static blacklist decodeArgCount(I)I
    .locals 1
    .param p0, "type"    # I

    .line 708
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method static blacklist decodeReturnType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 712
    const/16 v0, 0x70

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smunmask(II)I

    move-result v0

    return v0
.end method

.method static blacklist encode(II)I
    .locals 2
    .param p0, "argCount"    # I
    .param p1, "returnType"    # I

    .line 704
    const/16 v0, 0xf

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smmask(II)I

    move-result v0

    const/16 v1, 0x70

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->-$$Nest$smmask(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static blacklist toString(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .line 716
    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    .line 717
    .local v0, "argCount":I
    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v1

    .line 718
    .local v1, "returnType":I
    if-nez v0, :cond_2

    .line 719
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "Runnable"

    return-object v2

    .line 720
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 721
    :cond_1
    const-string v2, "Supplier"

    return-object v2

    .line 724
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->argCountPrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->lambdaSuffix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
