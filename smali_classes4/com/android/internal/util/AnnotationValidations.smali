.class public Lcom/android/internal/util/AnnotationValidations;
.super Ljava/lang/Object;
.source "AnnotationValidations.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist invalid(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 222
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 227
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "paramPrefix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "valueKind"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/AppIdInt;I)V
    .locals 1
    .param p1, "ignored"    # Landroid/annotation/AppIdInt;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/AppIdInt;",
            ">;",
            "Landroid/annotation/AppIdInt;",
            "I)V"
        }
    .end annotation

    .line 58
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/AppIdInt;>;"
    const v0, 0x186a0

    div-int v0, p2, v0

    if-nez v0, :cond_0

    if-gez p2, :cond_1

    .line 59
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    :cond_1
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V
    .locals 2
    .param p1, "ignored"    # Landroid/annotation/FloatRange;
    .param p2, "value"    # F
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "param"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 121
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/FloatRange;>;"
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 123
    :pswitch_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 122
    :pswitch_1
    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xe7b -> :sswitch_1
        0x3017aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;FLjava/lang/String;F)V
    .locals 0
    .param p1, "ignored"    # Landroid/annotation/FloatRange;
    .param p2, "value"    # F
    .param p3, "paramName1"    # Ljava/lang/String;
    .param p4, "param1"    # F
    .param p5, "paramName2"    # Ljava/lang/String;
    .param p6, "param2"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 115
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/FloatRange;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 116
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 117
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V
    .locals 2
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # I
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "param"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 71
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 78
    :pswitch_0
    int-to-long v0, p2

    cmp-long v0, v0, p4

    if-lez v0, :cond_1

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 73
    :pswitch_1
    int-to-long v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xe7b -> :sswitch_1
        0x3017aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V
    .locals 6
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # I
    .param p3, "paramName1"    # Ljava/lang/String;
    .param p4, "param1"    # J
    .param p6, "paramName2"    # Ljava/lang/String;
    .param p7, "param2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 65
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 66
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p6

    move-wide v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 67
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V
    .locals 2
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # J
    .param p4, "paramName"    # Ljava/lang/String;
    .param p5, "param"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 99
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "from"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "to"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 106
    :pswitch_0
    cmp-long v0, p2, p5

    if-lez v0, :cond_1

    .line 107
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 101
    :pswitch_1
    cmp-long v0, p2, p5

    if-gez v0, :cond_1

    .line 102
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xe7b -> :sswitch_1
        0x3017aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 7
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # J
    .param p4, "paramName1"    # Ljava/lang/String;
    .param p5, "param1"    # J
    .param p7, "paramName2"    # Ljava/lang/String;
    .param p8, "param2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 90
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 91
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p7

    move-wide v5, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 92
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ignored"    # Landroid/annotation/NonNull;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/NonNull;",
            ">;",
            "Landroid/annotation/NonNull;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 128
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/NonNull;>;"
    if-eqz p2, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V
    .locals 2
    .param p1, "ignored"    # Landroid/annotation/Size;
    .param p2, "value"    # I
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "param"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 141
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/Size;>;"
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "multiple"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "value"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "min"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "max"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 152
    :pswitch_0
    rem-int v0, p2, p4

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 149
    :pswitch_1
    if-le p2, p4, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 146
    :pswitch_2
    if-ge p2, p4, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 143
    :pswitch_3
    if-eq p4, v1, :cond_1

    if-eq p2, p4, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1a564 -> :sswitch_3
        0x1a652 -> :sswitch_2
        0x6ac9171 -> :sswitch_1
        0x26f8a610 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "ignored"    # Landroid/annotation/Size;
    .param p2, "value"    # I
    .param p3, "paramName1"    # Ljava/lang/String;
    .param p4, "param1"    # I
    .param p5, "paramName2"    # Ljava/lang/String;
    .param p6, "param2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 135
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/Size;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 136
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 137
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V
    .locals 1
    .param p1, "ignored"    # Landroid/annotation/UserIdInt;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/UserIdInt;",
            ">;",
            "Landroid/annotation/UserIdInt;",
            "I)V"
        }
    .end annotation

    .line 51
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/UserIdInt;>;"
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    const/4 v0, -0x3

    if-lt p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x53e2

    if-le p2, v0, :cond_2

    .line 53
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    :cond_2
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/Intent$Flags;I)V
    .locals 1
    .param p1, "ignored"    # Landroid/content/Intent$Flags;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/Intent$Flags;",
            ">;",
            "Landroid/content/Intent$Flags;",
            "I)V"
        }
    .end annotation

    .line 170
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/Intent$Flags;>;"
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validateIntFlags(Ljava/lang/Class;II)V

    .line 171
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PackageInfoFlagsBits;J)V
    .locals 1
    .param p1, "ignored"    # Landroid/content/pm/PackageManager$PackageInfoFlagsBits;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            ">;",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            "J)V"
        }
    .end annotation

    .line 164
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/pm/PackageManager$PackageInfoFlagsBits;>;"
    nop

    .line 165
    const/high16 v0, 0x20000000

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    .line 164
    invoke-static {p0, p2, p3, v0}, Lcom/android/internal/util/AnnotationValidations;->validateLongFlags(Ljava/lang/Class;JI)V

    .line 166
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PermissionResult;I)V
    .locals 1
    .param p1, "ignored"    # Landroid/content/pm/PackageManager$PermissionResult;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            ">;",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            "I)V"
        }
    .end annotation

    .line 159
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/pm/PackageManager$PermissionResult;>;"
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validateIntEnum(Ljava/lang/Class;II)V

    .line 160
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V
    .locals 2
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I)V"
        }
    .end annotation

    .line 185
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.annotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Landroid/annotation/ColorInt;

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    :cond_1
    if-gez p2, :cond_2

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    :cond_2
    return-void
.end method

.method public static varargs blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # I
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V
    .locals 2
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "J)V"
        }
    .end annotation

    .line 195
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.annotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 198
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method public static varargs blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method private static blacklist validateIntEnum(Ljava/lang/Class;II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "lastValid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    .line 205
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-le p1, p2, :cond_0

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 208
    :cond_0
    return-void
.end method

.method private static blacklist validateIntFlags(Ljava/lang/Class;II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "validBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    .line 211
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    and-int v0, p2, p1

    if-eq v0, p2, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method

.method private static blacklist validateLongFlags(Ljava/lang/Class;JI)V
    .locals 4
    .param p1, "value"    # J
    .param p3, "validBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;JI)V"
        }
    .end annotation

    .line 217
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    int-to-long v0, p3

    and-long/2addr v0, p1

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method
