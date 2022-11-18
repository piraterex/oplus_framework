.class final Landroid/os/Parcel$LazyValue;
.super Ljava/lang/Object;
.source "Parcel.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Class<",
        "*>;[",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mLength:I

.field private final blacklist mLoader:Ljava/lang/ClassLoader;

.field private blacklist mObject:Ljava/lang/Object;

.field private final blacklist mPosition:I

.field private volatile blacklist mSource:Landroid/os/Parcel;

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;IIILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "position"    # I
    .param p3, "length"    # I
    .param p4, "type"    # I
    .param p5, "loader"    # Ljava/lang/ClassLoader;

    .line 4418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4419
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4420
    iput p2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    .line 4421
    iput p3, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    .line 4422
    iput p4, p0, Landroid/os/Parcel$LazyValue;->mType:I

    .line 4423
    iput-object p5, p0, Landroid/os/Parcel$LazyValue;->mLoader:Ljava/lang/ClassLoader;

    .line 4424
    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4428
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4429
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_1

    .line 4430
    monitor-enter v0

    .line 4432
    :try_start_0
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_0

    .line 4433
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4435
    .local v1, "restore":I
    :try_start_1
    iget v2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4436
    iget-object v2, p0, Landroid/os/Parcel$LazyValue;->mLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, p1, p2}, Landroid/os/Parcel;->-$$Nest$mreadValue(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4438
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4439
    nop

    .line 4440
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    goto :goto_0

    .line 4438
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4439
    nop

    .end local v0    # "source":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/os/Parcel$LazyValue;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    throw v2

    .line 4442
    .end local v1    # "restore":I
    .restart local v0    # "source":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/os/Parcel$LazyValue;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 4444
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4395
    check-cast p1, Ljava/lang/Class;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel$LazyValue;->apply(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 4477
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 4478
    return v0

    .line 4480
    :cond_0
    instance-of v1, p1, Landroid/os/Parcel$LazyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4481
    return v2

    .line 4483
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/Parcel$LazyValue;

    .line 4485
    .local v1, "value":Landroid/os/Parcel$LazyValue;
    iget-object v3, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4486
    .local v3, "source":Landroid/os/Parcel;
    iget-object v4, v1, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4487
    .local v4, "otherSource":Landroid/os/Parcel;
    if-nez v3, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eq v5, v0, :cond_4

    .line 4488
    return v2

    .line 4491
    :cond_4
    if-nez v3, :cond_5

    .line 4495
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    iget-object v2, v1, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4498
    :cond_5
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mLoader:Ljava/lang/ClassLoader;

    iget-object v5, v1, Landroid/os/Parcel$LazyValue;->mLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4499
    return v2

    .line 4502
    :cond_6
    iget v0, p0, Landroid/os/Parcel$LazyValue;->mType:I

    iget v5, v1, Landroid/os/Parcel$LazyValue;->mType:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    iget v5, v1, Landroid/os/Parcel$LazyValue;->mLength:I

    if-eq v0, v5, :cond_7

    goto :goto_2

    .line 4506
    :cond_7
    iget v2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v5, v1, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-static {v3, v2, v4, v5, v0}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;ILandroid/os/Parcel;II)Z

    move-result v0

    return v0

    .line 4503
    :cond_8
    :goto_2
    return v2
.end method

.method public blacklist hasFileDescriptors()Z
    .locals 3

    .line 4457
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4458
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 4459
    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->hasFileDescriptors(II)Z

    move-result v1

    goto :goto_0

    .line 4460
    :cond_0
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v1

    .line 4458
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 4512
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/os/Parcel$LazyValue;->mLoader:Ljava/lang/ClassLoader;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 4465
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    const-string v1, "Supplier{"

    if-eqz v0, :cond_0

    .line 4466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mType:I

    invoke-static {v1}, Landroid/os/Parcel;->-$$Nest$smvalueTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4465
    :goto_0
    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 4448
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4449
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 4450
    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_0

    .line 4452
    :cond_0
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4454
    :goto_0
    return-void
.end method
