.class public Landroid/content/pm/AppSearchShortcutInfo$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "AppSearchShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppSearchShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/content/pm/AppSearchShortcutInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 451
    const-string v0, "Shortcut"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    .line 452
    return-void
.end method

.method static synthetic blacklist lambda$setCapabilityBindings$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "capabilityName"    # Ljava/lang/String;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setCategories$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 518
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$setIntents$1(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "it"    # Landroid/content/Intent;

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setIntents$2(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 554
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/appsearch/GenericDocument;
    .locals 1

    .line 445
    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->build()Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/content/pm/AppSearchShortcutInfo;
    .locals 2

    .line 679
    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "flags"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 680
    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public blacklist setActivity(Landroid/content/ComponentName;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 470
    if-eqz p1, :cond_0

    .line 471
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "activity"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 473
    :cond_0
    return-object p0
.end method

.method public blacklist setCapabilityBindings(Ljava/util/Map;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Landroid/content/pm/AppSearchShortcutInfo$Builder;"
        }
    .end annotation

    .line 654
    .local p1, "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 656
    .local v0, "capabilityNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 657
    .local v1, "capabilityBindings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 658
    .local v3, "capabilityName":Ljava/lang/String;
    nop

    .line 659
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 660
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 661
    .local v6, "paramName":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3, v6}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 663
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 664
    .end local v6    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 665
    .end local v3    # "capabilityName":Ljava/lang/String;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 666
    :cond_1
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v4, "capability"

    invoke-virtual {p0, v4, v3}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 667
    new-array v2, v2, [Ljava/lang/String;

    .line 668
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 667
    const-string v3, "capabilityBindings"

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 670
    .end local v0    # "capabilityNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "capabilityBindings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-object p0
.end method

.method public blacklist setCategories(Ljava/util/Set;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/AppSearchShortcutInfo$Builder;"
        }
    .end annotation

    .line 517
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "categories"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 520
    :cond_0
    return-object p0
.end method

.method public blacklist setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "disabledMessage"    # Ljava/lang/CharSequence;

    .line 505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "disabledMessage cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 507
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 506
    const-string v1, "disabledMessage"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 509
    :cond_0
    return-object p0
.end method

.method public blacklist setDisabledReason(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "disabledReason"    # I

    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "disabledReason"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 646
    return-object p0
.end method

.method public blacklist setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 595
    if-eqz p1, :cond_0

    .line 596
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "extras"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    .line 598
    :cond_0
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "flags"    # I

    .line 605
    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smflattenFlags(I)[Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "flagArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 607
    iget-object v1, p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;->mFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 609
    :cond_0
    return-object p0
.end method

.method public blacklist setIconResId(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 4
    .param p1, "iconResId"    # I

    .line 617
    const/4 v0, 0x1

    new-array v0, v0, [J

    int-to-long v1, p1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const-string v1, "iconResId"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 618
    return-object p0
.end method

.method public blacklist setIconResName(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 2
    .param p1, "iconResName"    # Ljava/lang/String;

    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "iconResName"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 628
    :cond_0
    return-object p0
.end method

.method public blacklist setIconUri(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 2
    .param p1, "iconUri"    # Ljava/lang/String;

    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "iconUri"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 638
    :cond_0
    return-object p0
.end method

.method public blacklist setIntent(Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 528
    if-nez p1, :cond_0

    .line 529
    return-object p0

    .line 531
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 6
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 539
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 542
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 543
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "intents cannot contain null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent\'s action must be set"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    .end local v3    # "intent":Landroid/content/Intent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_1
    array-length v0, p1

    new-array v0, v0, [[B

    .line 547
    .local v0, "intentExtrases":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 548
    aget-object v3, p1, v2

    .line 549
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 550
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 551
    new-array v5, v1, [B

    goto :goto_2

    :cond_2
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v5}, Landroid/content/pm/AppSearchShortcutInfo;->-$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v5

    :goto_2
    aput-object v5, v0, v2

    .line 547
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "extras":Landroid/os/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 553
    .end local v2    # "i":I
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder$$ExternalSyntheticLambda2;-><init>()V

    .line 554
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 553
    const-string v2, "intents"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 555
    const-string v1, "intentPersistableExtras"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    .line 556
    return-object p0

    .line 540
    .end local v0    # "intentExtrases":[[B
    :cond_4
    :goto_3
    return-object p0
.end method

.method public blacklist setLocusId(Landroid/content/LocusId;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 459
    if-eqz p1, :cond_0

    .line 460
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "locusId"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 462
    :cond_0
    return-object p0
.end method

.method public blacklist setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "longLabel"    # Ljava/lang/CharSequence;

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "longLabel cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 495
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 494
    const-string v1, "longLabel"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 497
    :cond_0
    return-object p0
.end method

.method public blacklist setPerson(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 2
    .param p1, "person"    # Landroid/app/Person;

    .line 564
    if-nez p1, :cond_0

    .line 565
    return-object p0

    .line 567
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 4
    .param p1, "persons"    # [Landroid/app/Person;

    .line 575
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 578
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/app/appsearch/GenericDocument;

    .line 579
    .local v0, "documents":[Landroid/app/appsearch/GenericDocument;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 580
    aget-object v2, p1, v1

    .line 581
    .local v2, "person":Landroid/app/Person;
    if-nez v2, :cond_1

    goto :goto_1

    .line 582
    :cond_1
    nop

    .line 583
    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutPerson;->instance(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object v3

    .line 584
    .local v3, "personEntity":Landroid/content/pm/AppSearchShortcutPerson;
    aput-object v3, v0, v1

    .line 579
    .end local v2    # "person":Landroid/app/Person;
    .end local v3    # "personEntity":Landroid/content/pm/AppSearchShortcutPerson;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v1, "person"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 587
    return-object p0

    .line 576
    .end local v0    # "documents":[Landroid/app/appsearch/GenericDocument;
    :cond_3
    :goto_2
    return-object p0
.end method

.method public blacklist setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;
    .locals 3
    .param p1, "shortLabel"    # Ljava/lang/CharSequence;

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "shortLabel cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 483
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 482
    const-string/jumbo v1, "shortLabel"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    .line 485
    :cond_0
    return-object p0
.end method
