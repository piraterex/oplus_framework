.class public Lcom/oplus/eventhub/sdk/aidl/EventConfig;
.super Ljava/lang/Object;
.source "EventConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/eventhub/sdk/aidl/EventConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEventSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/EventConfig$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/EventConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-class v0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 85
    .local v0, "loader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 87
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    .line 88
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addEvent(Lcom/oplus/eventhub/sdk/aidl/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 65
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllEvents()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 58
    .local v2, "event":Lcom/oplus/eventhub/sdk/aidl/Event;
    invoke-virtual {v2}, Lcom/oplus/eventhub/sdk/aidl/Event;->getEventType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "event":Lcom/oplus/eventhub/sdk/aidl/Event;
    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method

.method public whitelist getEventSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventConfig{mEventSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    .line 78
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0

    .line 74
    :cond_1
    :goto_0
    const-string v0, "EventConfig empty."

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 112
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->mEventSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 115
    :cond_0
    return-void
.end method
