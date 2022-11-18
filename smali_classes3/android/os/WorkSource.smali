.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$WorkChain;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "WorkSource"

.field static greylist-max-p sGoneWork:Landroid/os/WorkSource;

.field static greylist-max-p sNewbWork:Landroid/os/WorkSource;

.field static final greylist-max-p sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field private greylist-max-o mChains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field

.field greylist mNames:[Ljava/lang/String;

.field greylist mNum:I

.field greylist mUids:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 1247
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 3
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput v2, v1, v0

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 106
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string/jumbo v0, "packageName can\'t be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 119
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v0

    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 120
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 121
    iput-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "numChains":I
    if-lez v0, :cond_0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 133
    const-class v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_0

    .line 135
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 137
    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "orig"    # Landroid/os/WorkSource;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 72
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 73
    return-void

    .line 75
    :cond_0
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 76
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 78
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 81
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 84
    :goto_1
    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 87
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 88
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_2

    :cond_3
    goto :goto_3

    .line 91
    :cond_4
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 93
    :goto_3
    return-void
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I

    .line 706
    if-nez p0, :cond_0

    .line 707
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    .line 709
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 710
    return-object p0
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 798
    if-nez p0, :cond_0

    .line 799
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 801
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 802
    return-object p0
.end method

.method private greylist-max-o clearNames()V
    .locals 6

    .line 222
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, "destIndex":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 227
    .local v1, "newNum":I
    const/4 v2, 0x1

    .local v2, "sourceIndex":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_1

    .line 228
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    if-ne v4, v5, :cond_0

    .line 229
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 231
    :cond_0
    aput v4, v3, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    .line 227
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "sourceIndex":I
    :cond_1
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 237
    .end local v0    # "destIndex":I
    .end local v1    # "newNum":I
    :cond_2
    return-void
.end method

.method private greylist-max-o compare(Landroid/os/WorkSource;II)I
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .line 790
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    .line 791
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 792
    return v0

    .line 794
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;
    .locals 6
    .param p0, "oldWs"    # Landroid/os/WorkSource;
    .param p1, "newWs"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            "Landroid/os/WorkSource;",
            ")[",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    .line 1135
    .local v1, "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1136
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1137
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1138
    .local v3, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1139
    :cond_0
    if-nez v1, :cond_1

    .line 1140
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 1142
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    .end local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 1148
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1149
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1150
    .restart local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1151
    :cond_4
    if-nez v0, :cond_5

    .line 1152
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 1154
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    .end local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1159
    .end local v2    # "i":I
    :cond_7
    if-nez v0, :cond_9

    if-eqz v1, :cond_8

    goto :goto_2

    .line 1163
    :cond_8
    const/4 v2, 0x0

    return-object v2

    .line 1160
    :cond_9
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method private greylist-max-o insert(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "uid"    # I

    .line 869
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 870
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 871
    aput p2, v0, v1

    .line 872
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 873
    :cond_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    array-length v4, v0

    if-lt v3, v4, :cond_3

    .line 874
    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 875
    .local v3, "newuids":[I
    if-lez p1, :cond_1

    .line 876
    invoke-static {v0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    :cond_1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_2

    .line 879
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    :cond_2
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 882
    aput p2, v3, p1

    .line 883
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 884
    .end local v3    # "newuids":[I
    goto :goto_0

    .line 885
    :cond_3
    if-ge p1, v3, :cond_4

    .line 886
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 889
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 891
    :goto_0
    return-void
.end method

.method private greylist-max-o insert(IILjava/lang/String;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 894
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x4

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 896
    aput p2, v3, v1

    .line 897
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 898
    aput-object p3, v0, v1

    .line 899
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 900
    :cond_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    array-length v4, v0

    if-lt v3, v4, :cond_3

    .line 901
    mul-int/lit8 v4, v3, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 902
    .local v4, "newuids":[I
    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 903
    .local v3, "newnames":[Ljava/lang/String;
    if-lez p1, :cond_1

    .line 904
    invoke-static {v0, v1, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    :cond_1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_2

    .line 908
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v0, p1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    :cond_2
    iput-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    .line 912
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 913
    aput p2, v4, p1

    .line 914
    aput-object p3, v3, p1

    .line 915
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 916
    .end local v3    # "newnames":[Ljava/lang/String;
    .end local v4    # "newuids":[I
    goto :goto_0

    .line 917
    :cond_3
    if-ge p1, v3, :cond_4

    .line 918
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 922
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, p1

    .line 923
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 925
    :goto_0
    return-void
.end method

.method public static greylist-max-o isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "chained_battery_attribution_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private greylist-max-o removeUids(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 619
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 620
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 621
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 622
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 623
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 624
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 626
    .local v6, "i2":I
    :goto_0
    if-ge v5, v0, :cond_3

    if-ge v6, v2, :cond_3

    .line 629
    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_1

    .line 632
    add-int/lit8 v0, v0, -0x1

    .line 633
    const/4 v4, 0x1

    .line 634
    if-ge v5, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 636
    :cond_1
    aget v7, v3, v6

    aget v8, v1, v5

    if-le v7, v8, :cond_2

    .line 638
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 641
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 645
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 647
    return v4
.end method

.method private greylist-max-o removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 651
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 652
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 653
    .local v1, "uids1":[I
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 654
    .local v2, "names1":[Ljava/lang/String;
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 655
    .local v3, "N2":I
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 656
    .local v4, "uids2":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 657
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 658
    .local v6, "changed":Z
    const/4 v7, 0x0

    .local v7, "i1":I
    const/4 v8, 0x0

    .line 660
    .local v8, "i2":I
    :goto_0
    if-ge v7, v0, :cond_4

    if-ge v8, v3, :cond_4

    .line 663
    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_1

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 666
    add-int/lit8 v0, v0, -0x1

    .line 667
    const/4 v6, 0x1

    .line 668
    if-ge v7, v0, :cond_0

    .line 669
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v1, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v2, v9, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 673
    :cond_1
    aget v9, v4, v8

    aget v10, v1, v7

    if-gt v9, v10, :cond_3

    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_2

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    .line 674
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    goto :goto_1

    .line 679
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 676
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 683
    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 685
    return v6
.end method

.method private greylist-max-p updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 4
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 690
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 691
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0

    .line 693
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const-string v2, " does not"

    if-lez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 694
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 698
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 806
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 807
    .local v0, "N2":I
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 808
    .local v1, "uids2":[I
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 809
    .local v2, "names2":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 810
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i1":I
    const/4 v5, 0x0

    .line 813
    .local v5, "i2":I
    :goto_0
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v6, :cond_1

    if-ge v5, v0, :cond_0

    goto :goto_1

    .line 864
    :cond_0
    return v3

    .line 816
    :cond_1
    :goto_1
    const/4 v7, -0x1

    .line 817
    .local v7, "diff":I
    if-ge v4, v6, :cond_9

    if-ge v5, v0, :cond_2

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v6

    move v7, v6

    if-lez v6, :cond_2

    goto :goto_5

    .line 829
    :cond_2
    if-nez p2, :cond_4

    .line 831
    if-ge v5, v0, :cond_3

    if-nez v7, :cond_3

    .line 832
    add-int/lit8 v5, v5, 0x1

    .line 834
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 837
    :cond_4
    move v6, v4

    .line 838
    .local v6, "start":I
    :goto_2
    if-gez v7, :cond_7

    .line 841
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v4

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 842
    add-int/lit8 v4, v4, 0x1

    .line 843
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v8, :cond_5

    .line 844
    goto :goto_4

    .line 846
    :cond_5
    if-ge v5, v0, :cond_6

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v8

    goto :goto_3

    :cond_6
    const/4 v8, -0x1

    :goto_3
    move v7, v8

    goto :goto_2

    .line 848
    :cond_7
    :goto_4
    if-ge v6, v4, :cond_8

    .line 849
    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v9, v4

    invoke-static {v8, v4, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v9, v4

    invoke-static {v8, v4, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v4, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    .line 852
    move v4, v6

    .line 855
    :cond_8
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v4, v8, :cond_b

    if-nez v7, :cond_b

    .line 857
    add-int/lit8 v4, v4, 0x1

    .line 858
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 819
    .end local v6    # "start":I
    :cond_9
    :goto_5
    const/4 v3, 0x1

    .line 822
    aget v6, v1, v5

    aget-object v8, v2, v5

    invoke-direct {p0, v4, v6, v8}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 823
    if-eqz p3, :cond_a

    .line 824
    sget-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v1, v5

    aget-object v9, v2, v5

    invoke-static {v6, v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v6

    sput-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 826
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 827
    add-int/lit8 v5, v5, 0x1

    .line 862
    .end local v7    # "diff":I
    :cond_b
    :goto_6
    goto/16 :goto_0
.end method

.method private greylist-max-o updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 10
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 714
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 715
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 716
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 717
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 718
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 719
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 722
    .local v6, "i2":I
    :goto_0
    if-lt v5, v0, :cond_1

    if-ge v6, v2, :cond_0

    goto :goto_1

    .line 780
    :cond_0
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 781
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 783
    return v4

    .line 725
    :cond_1
    :goto_1
    if-ge v5, v0, :cond_9

    if-ge v6, v2, :cond_2

    aget v7, v3, v6

    aget v8, v1, v5

    if-ge v7, v8, :cond_2

    goto :goto_3

    .line 750
    :cond_2
    if-nez p2, :cond_4

    .line 753
    if-ge v6, v2, :cond_3

    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_3

    .line 754
    add-int/lit8 v6, v6, 0x1

    .line 756
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 759
    :cond_4
    move v7, v5

    .line 760
    .local v7, "start":I
    :goto_2
    if-ge v5, v0, :cond_6

    if-ge v6, v2, :cond_5

    aget v8, v3, v6

    aget v9, v1, v5

    if-le v8, v9, :cond_6

    .line 762
    :cond_5
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v9, v1, v5

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 763
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 765
    :cond_6
    if-ge v7, v5, :cond_7

    .line 766
    sub-int v8, v0, v5

    invoke-static {v1, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    sub-int v8, v5, v7

    sub-int/2addr v0, v8

    .line 768
    move v5, v7

    .line 771
    :cond_7
    if-ge v5, v0, :cond_8

    if-ge v6, v2, :cond_8

    aget v8, v3, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_8

    .line 773
    add-int/lit8 v5, v5, 0x1

    .line 774
    add-int/lit8 v6, v6, 0x1

    .line 776
    .end local v7    # "start":I
    :cond_8
    goto :goto_0

    .line 729
    :cond_9
    :goto_3
    const/4 v4, 0x1

    .line 730
    const/4 v7, 0x0

    if-nez v1, :cond_a

    .line 731
    const/4 v8, 0x4

    new-array v1, v8, [I

    .line 732
    aget v8, v3, v6

    aput v8, v1, v7

    goto :goto_4

    .line 733
    :cond_a
    array-length v8, v1

    if-lt v0, v8, :cond_d

    .line 734
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [I

    .line 735
    .local v8, "newuids":[I
    if-lez v5, :cond_b

    invoke-static {v1, v7, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 736
    :cond_b
    if-ge v5, v0, :cond_c

    add-int/lit8 v7, v5, 0x1

    sub-int v9, v0, v5

    invoke-static {v1, v5, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    :cond_c
    move-object v1, v8

    .line 738
    aget v7, v3, v6

    aput v7, v1, v5

    .line 739
    .end local v8    # "newuids":[I
    goto :goto_4

    .line 740
    :cond_d
    if-ge v5, v0, :cond_e

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    :cond_e
    aget v7, v3, v6

    aput v7, v1, v5

    .line 743
    :goto_4
    if-eqz p3, :cond_f

    .line 744
    sget-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v3, v6

    invoke-static {v7, v8}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v7

    sput-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 746
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 747
    add-int/lit8 v5, v5, 0x1

    .line 748
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public greylist add(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 482
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 484
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 485
    return v1

    .line 487
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 490
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 492
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 493
    return v2

    .line 495
    :cond_1
    neg-int v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 496
    return v1

    .line 488
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding without name to named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist add(ILjava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 503
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    .line 504
    invoke-direct {p0, v1, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 505
    return v2

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_4

    .line 512
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1

    .line 513
    goto :goto_1

    .line 515
    :cond_1
    if-ne v3, p1, :cond_3

    .line 516
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 517
    .local v3, "diff":I
    if-lez v3, :cond_2

    .line 518
    goto :goto_1

    .line 520
    :cond_2
    if-nez v3, :cond_3

    .line 521
    return v1

    .line 511
    .end local v3    # "diff":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 526
    return v2

    .line 508
    .end local v0    # "i":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding name to unnamed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist add(Landroid/os/WorkSource;)Z
    .locals 8
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 424
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 425
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v2

    .line 427
    .local v2, "uidAdded":Z
    const/4 v3, 0x0

    .line 428
    .local v3, "chainAdded":Z
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 431
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 432
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 435
    :cond_0
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 436
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 437
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v7, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v7, v5}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v3, 0x1

    .line 440
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_1
    goto :goto_0

    .line 443
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    monitor-exit v0

    return v1

    .line 444
    .end local v2    # "uidAdded":Z
    .end local v3    # "chainAdded":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 472
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 473
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 474
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist clear()V
    .locals 1

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 244
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    :cond_0
    return-void
.end method

.method public whitelist createWorkChain()Landroid/os/WorkSource$WorkChain;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 568
    :cond_0
    new-instance v0, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 569
    .local v0, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 295
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 296
    .local v0, "N":I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 297
    return v2

    .line 299
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 300
    .local v1, "uids1":[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 301
    .local v3, "uids2":[I
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 302
    .local v4, "names1":[Ljava/lang/String;
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 303
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_3

    .line 304
    aget v7, v1, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_1

    .line 305
    return v2

    .line 307
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 308
    return v2

    .line 303
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    .end local v6    # "i":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1217
    .local v2, "workSourceToken":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, v0, Landroid/os/WorkSource;->mNum:I

    const-wide v6, 0x10900000002L

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    if-ge v4, v5, :cond_1

    .line 1218
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 1219
    .local v10, "contentProto":J
    iget-object v5, v0, Landroid/os/WorkSource;->mUids:[I

    aget v5, v5, v4

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1220
    iget-object v5, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1221
    aget-object v5, v5, v4

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1223
    :cond_0
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1217
    .end local v10    # "contentProto":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1226
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1227
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1228
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 1229
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1231
    .local v12, "workChain":J
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v14

    .line 1232
    .local v14, "tags":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v15

    .line 1233
    .local v15, "uids":[I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "j":I
    :goto_2
    array-length v7, v14

    if-ge v6, v7, :cond_2

    .line 1234
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1235
    .local v8, "contentProto":J
    aget v7, v15, v6

    const-wide v10, 0x10500000001L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1236
    aget-object v7, v14, v6

    const-wide v10, 0x10900000002L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1237
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1233
    .end local v8    # "contentProto":J
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    goto :goto_2

    :cond_2
    const-wide v10, 0x10900000002L

    .line 1240
    .end local v6    # "j":I
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1227
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v12    # "workChain":J
    .end local v14    # "tags":[Ljava/lang/String;
    .end local v15    # "uids":[I
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v10

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    goto :goto_1

    .line 1244
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1245
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    instance-of v0, p1, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 252
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource;

    .line 254
    .local v0, "other":Landroid/os/WorkSource;
    invoke-virtual {p0, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    return v1

    .line 258
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 261
    :cond_1
    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 265
    .end local v0    # "other":Landroid/os/WorkSource;
    :cond_4
    return v1
.end method

.method public greylist get(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getUid(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributionUid()I
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, -0x1

    return v0

    .line 191
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getUid(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getWorkChains()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_0

    .line 272
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v1

    xor-int v0, v2, v3

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 275
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_1

    .line 276
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int v0, v2, v3

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 280
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 281
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    xor-int v0, v2, v1

    .line 284
    :cond_2
    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 582
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist remove(Landroid/os/WorkSource;)Z
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 530
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 536
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    .local v0, "uidRemoved":Z
    goto :goto_0

    .line 538
    .end local v0    # "uidRemoved":Z
    :cond_1
    const-string v2, " does not"

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 546
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    .line 549
    .restart local v0    # "uidRemoved":Z
    :goto_0
    const/4 v2, 0x0

    .line 550
    .local v2, "chainRemoved":Z
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 551
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 554
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 543
    .end local v0    # "uidRemoved":Z
    .end local v2    # "chainRemoved":Z
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_7
    :goto_1
    return v1
.end method

.method public greylist-max-o set(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 363
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 364
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 367
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    :cond_1
    return-void
.end method

.method public greylist-max-o set(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 374
    if-eqz p2, :cond_2

    .line 377
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 378
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 380
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 383
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 384
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    :cond_1
    return-void

    .line 375
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist set(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 320
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 321
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 322
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    :cond_0
    return-void

    .line 327
    :cond_1
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 328
    iget-object v2, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 329
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lt v5, v1, :cond_2

    .line 330
    invoke-static {v2, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 334
    :goto_0
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 335
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_3

    array-length v3, v2

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v4, :cond_3

    .line 336
    invoke-static {v1, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 338
    :cond_3
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 341
    :cond_4
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 344
    :cond_5
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 345
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 348
    :goto_1
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 349
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 352
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 355
    :goto_2
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 356
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_3

    .line 359
    :cond_7
    return-void
.end method

.method public blacklist setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 404
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 405
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 406
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 407
    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v3, :cond_1

    sget-object v4, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    monitor-exit v0

    return-object v1

    .line 408
    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/WorkSource;

    .line 409
    .local v1, "diffs":[Landroid/os/WorkSource;
    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 410
    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v1, v2

    .line 411
    monitor-exit v0

    return-object v1

    .line 414
    .end local v1    # "diffs":[Landroid/os/WorkSource;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist size()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 156
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1188
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "WorkSource{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    const-string v3, ", "

    if-ge v1, v2, :cond_2

    .line 1190
    if-eqz v1, :cond_0

    .line 1191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1194
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1195
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1201
    const-string v1, " chains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1203
    if-eqz v1, :cond_3

    .line 1204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    :cond_3
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1210
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o transferWorkChains(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 602
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    :cond_0
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 614
    :cond_2
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 615
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    return-void

    .line 607
    :cond_3
    :goto_0
    return-void
.end method

.method public whitelist withoutNames()Landroid/os/WorkSource;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 457
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 458
    .local v0, "copy":Landroid/os/WorkSource;
    invoke-direct {v0}, Landroid/os/WorkSource;->clearNames()V

    .line 459
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1173
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1175
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1180
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 1183
    :goto_0
    return-void
.end method
