.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-p buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cls"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 120
    if-nez p0, :cond_0

    .line 121
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "simpleName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 127
    .local v1, "end":I
    if-lez v1, :cond_2

    .line 128
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v1    # "end":I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v0    # "simpleName":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public static blacklist callersWithin(Ljava/lang/Class;I)Ljava/util/List;
    .locals 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    int-to-long v1, v1

    .line 320
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/util/DebugUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 321
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/util/DebugUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/util/DebugUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 322
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 323
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 324
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 325
    return-object v0
.end method

.method private static greylist-max-o constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 309
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 294
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 295
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 297
    .local v4, "modifiers":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 299
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 300
    invoke-static {p1, v3}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 303
    :cond_0
    goto :goto_1

    .line 302
    :catch_0
    move-exception v5

    .line 294
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 246
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v1, "res":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 249
    .local v4, "flagsWasZero":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move-wide/from16 v9, p2

    .end local p2    # "flags":J
    .local v9, "flags":J
    :goto_1
    if-ge v5, v8, :cond_7

    aget-object v11, v7, v5

    .line 250
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 251
    .local v12, "modifiers":I
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 252
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v7

    goto :goto_3

    .line 253
    :cond_2
    :goto_2
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 254
    invoke-static {v11}, Landroid/util/DebugUtils;->getFieldValue(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    .line 255
    .local v13, "value":J
    cmp-long v15, v13, v2

    if-nez v15, :cond_3

    if-eqz v4, :cond_3

    .line 256
    invoke-static {v0, v11}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 258
    :cond_3
    cmp-long v15, v13, v2

    if-eqz v15, :cond_4

    and-long v15, v9, v13

    cmp-long v15, v15, v13

    if-nez v15, :cond_4

    .line 259
    move-object/from16 v16, v7

    not-long v6, v13

    and-long/2addr v6, v9

    .line 260
    .end local v9    # "flags":J
    .local v6, "flags":J
    invoke-static {v0, v11}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x7c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide v9, v6

    goto :goto_3

    .line 258
    .end local v6    # "flags":J
    .restart local v9    # "flags":J
    :cond_4
    move-object/from16 v16, v7

    goto :goto_3

    .line 253
    .end local v13    # "value":J
    :cond_5
    move-object/from16 v16, v7

    goto :goto_3

    .line 251
    :cond_6
    move-object/from16 v16, v7

    .line 249
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "modifiers":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v16

    goto :goto_1

    .line 264
    :cond_7
    cmp-long v2, v9, v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 267
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 265
    :cond_9
    :goto_4
    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getFieldValue(Ljava/lang/reflect/Field;)J
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 275
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 276
    .local v3, "longValue":J
    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 277
    return-wide v3

    .line 279
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .local v2, "intValue":I
    if-eqz v2, :cond_1

    .line 281
    int-to-long v0, v2

    return-wide v0

    .line 284
    .end local v2    # "intValue":I
    .end local v3    # "longValue":J
    :cond_1
    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 285
    :goto_0
    return-wide v0
.end method

.method public static whitelist isObjectSelected(Ljava/lang/Object;)Z
    .locals 13
    .param p0, "object"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "match":Z
    const-string v1, "ANDROID_OBJECT_FILTER"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 80
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "selectors":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_4

    .line 85
    aget-object v5, v2, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "pair":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 88
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 89
    .local v7, "declaredMethod":Ljava/lang/reflect/Method;
    move-object v8, v6

    .line 91
    .local v8, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v4

    .line 92
    const/4 v11, 0x1

    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v4

    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v12, v10

    check-cast v12, [Ljava/lang/Class;

    .line 91
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v7, v9

    .line 95
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object v8, v9

    if-eqz v9, :cond_1

    if-eqz v7, :cond_0

    .line 98
    :cond_1
    if-eqz v7, :cond_3

    .line 99
    move-object v9, v10

    check-cast v9, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v7, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 101
    .local v9, "value":Ljava/lang/Object;
    if-eqz v9, :cond_2

    .line 102
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "null"

    :goto_1
    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v10

    .line 110
    .end local v7    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v8    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    goto :goto_3

    .line 108
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3

    .line 106
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    .line 107
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 104
    :catch_2
    move-exception v7

    .line 105
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 84
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "selectors":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method static synthetic blacklist lambda$callersWithin$0(Ljava/lang/Class;Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "st"    # Ljava/lang/StackTraceElement;

    .line 321
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "number"    # J

    .line 139
    long-to-float v0, p1

    .line 140
    .local v0, "result":F
    const-string v1, ""

    .line 141
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-lez v3, :cond_0

    .line 142
    const-string v1, "KB"

    .line 143
    div-float/2addr v0, v4

    .line 145
    :cond_0
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    .line 146
    const-string v1, "MB"

    .line 147
    div-float/2addr v0, v4

    .line 149
    :cond_1
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    .line 150
    const-string v1, "GB"

    .line 151
    div-float/2addr v0, v4

    .line 153
    :cond_2
    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    .line 154
    const-string v1, "TB"

    .line 155
    div-float/2addr v0, v4

    .line 157
    :cond_3
    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    .line 158
    const-string v1, "PB"

    .line 159
    div-float/2addr v0, v4

    .line 162
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_5

    .line 163
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 165
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    const-string v5, "%.0f"

    if-gez v2, :cond_7

    .line 167
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .restart local v2    # "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static greylist-max-o sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J
    .param p2, "outBuilder"    # Ljava/lang/StringBuilder;

    .line 177
    if-nez p2, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object p2, v0

    .line 180
    :cond_0
    long-to-float v0, p0

    .line 181
    .local v0, "result":F
    const-string v1, ""

    .line 182
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-lez v3, :cond_1

    .line 183
    const-string v1, "KB"

    .line 184
    div-float/2addr v0, v4

    .line 186
    :cond_1
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    .line 187
    const-string v1, "MB"

    .line 188
    div-float/2addr v0, v4

    .line 190
    :cond_2
    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    .line 191
    const-string v1, "GB"

    .line 192
    div-float/2addr v0, v4

    .line 194
    :cond_3
    cmpl-float v3, v0, v2

    if-lez v3, :cond_4

    .line 195
    const-string v1, "TB"

    .line 196
    div-float/2addr v0, v4

    .line 198
    :cond_4
    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 199
    const-string v1, "PB"

    .line 200
    div-float/2addr v0, v4

    .line 203
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_6

    .line 204
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    .line 206
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.1f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v0, v2

    const-string v5, "%.0f"

    if-gez v2, :cond_8

    .line 208
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2    # "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 224
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 225
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 226
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 230
    invoke-static {p1, v3}, Landroid/util/DebugUtils;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 233
    :cond_0
    goto :goto_1

    .line 232
    :catch_0
    move-exception v5

    .line 224
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
