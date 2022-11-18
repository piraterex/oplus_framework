.class public Landroid/telephony/ims/RcsConfig$Characteristic;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristic"
.end annotation


# instance fields
.field private final blacklist mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

.field private final blacklist mParms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParent()Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParmValue(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParms(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParms()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubs(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    .line 72
    iput-object p1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig$Characteristic-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V

    return-void
.end method

.method private blacklist getParent()Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method private blacklist getParmValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 113
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 114
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    goto :goto_1

    .line 118
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_0
    goto :goto_0

    .line 120
    :cond_1
    :goto_1
    return-object v0
.end method

.method private blacklist getParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    return-object p0

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "result":Landroid/telephony/ims/RcsConfig$Characteristic;
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 98
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    goto :goto_1

    .line 102
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_1
    goto :goto_0

    .line 103
    :cond_2
    :goto_1
    return-object v0
.end method

.method private blacklist getSubs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    return-object v0
.end method

.method private blacklist getType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist hasSubByType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 153
    instance-of v0, p1, Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    return v1

    .line 157
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 159
    .local v0, "o":Landroid/telephony/ims/RcsConfig$Characteristic;
    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    .line 160
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 159
    :goto_0
    return v1
.end method

.method blacklist hasParm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 125
    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 129
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-virtual {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->hasParm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    return v1

    .line 132
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {}, Landroid/telephony/ims/RcsConfig;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 145
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Landroid/telephony/ims/RcsConfig$Characteristic;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\t"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
