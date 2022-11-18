.class public Landroid/security/identity/PersonalizationData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/PersonalizationData$Builder;,
        Landroid/security/identity/PersonalizationData$EntryData;,
        Landroid/security/identity/PersonalizationData$NamespaceData;
    }
.end annotation


# instance fields
.field private blacklist mNamespaces:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/security/identity/PersonalizationData$NamespaceData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNamespaces(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfiles(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/identity/PersonalizationData-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/security/identity/PersonalizationData;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getAccessControlProfiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist getNamespaceData(Ljava/lang/String;)Landroid/security/identity/PersonalizationData$NamespaceData;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$NamespaceData;

    return-object v0
.end method

.method blacklist getNamespaces()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
