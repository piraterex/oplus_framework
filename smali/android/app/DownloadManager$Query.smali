.class public Landroid/app/DownloadManager$Query;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# static fields
.field public static final greylist-max-o ORDER_ASCENDING:I = 0x1

.field public static final greylist-max-o ORDER_DESCENDING:I = 0x2


# instance fields
.field private greylist-max-o mFilterString:Ljava/lang/String;

.field private greylist-max-o mIds:[J

.field private greylist-max-o mOnlyIncludeVisibleInDownloadsUi:Z

.field private greylist-max-o mOrderByColumn:Ljava/lang/String;

.field private greylist-max-o mOrderDirection:I

.field private greylist-max-o mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 881
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 882
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    .line 883
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 884
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    return-void
.end method

.method private greylist-max-o joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1023
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1025
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1026
    .local v3, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1027
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const/4 v1, 0x0

    .line 1031
    .end local v3    # "part":Ljava/lang/String;
    goto :goto_0

    .line 1032
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-p orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .line 943
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_1
    :goto_0
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    const-string v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    goto :goto_1

    .line 949
    :cond_2
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 950
    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 954
    :goto_1
    iput p2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 955
    return-object p0

    .line 952
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .line 964
    move-object v1, p3

    .line 965
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 966
    .local v6, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 968
    .local v0, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v3, v2

    .line 969
    .local v3, "whereArgsCount":I
    :goto_0
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    :goto_1
    move v7, v4

    .line 970
    .end local v3    # "whereArgsCount":I
    .local v7, "whereArgsCount":I
    new-array v8, v7, [Ljava/lang/String;

    .line 972
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x1

    if-lez v7, :cond_3

    .line 973
    if-eqz v2, :cond_2

    .line 974
    invoke-static {v2}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    invoke-static {v2, v8}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    .line 978
    :cond_2
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 979
    const-string/jumbo v2, "title LIKE ?"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    array-length v2, v8

    sub-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 984
    :cond_3
    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    const-string v3, " AND "

    if-eqz v2, :cond_9

    .line 985
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, v0

    const-string v5, "="

    if-eqz v4, :cond_4

    .line 987
    const/16 v4, 0xbe

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_4
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 990
    const/16 v4, 0xc0

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_5
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    .line 993
    const/16 v4, 0xc1

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    const/16 v4, 0xc2

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    const/16 v4, 0xc3

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    const/16 v4, 0xc4

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_6
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    .line 999
    const/16 v4, 0xc8

    invoke-direct {p0, v5, v4}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_7
    iget-object v4, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    .line 1002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x190

    const-string v9, ">="

    invoke-direct {p0, v9, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x258

    .line 1003
    const-string v9, "<"

    invoke-direct {p0, v9, v5}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1002
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_8
    const-string v4, " OR "

    invoke-direct {p0, v4, v2}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    .end local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    iget-boolean v2, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    if-eqz v2, :cond_a

    .line 1009
    const-string v2, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_a
    const-string v2, "deleted != \'1\'"

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-direct {p0, v3, v6}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 1016
    .local v9, "selection":Ljava/lang/String;
    iget v2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    if-ne v2, v0, :cond_b

    const-string v0, "ASC"

    goto :goto_2

    :cond_b
    const-string v0, "DESC"

    :goto_2
    move-object v10, v0

    .line 1017
    .local v10, "orderDirection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1019
    .local v11, "orderBy":Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist setFilterById([J)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "ids"    # [J

    .line 892
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 893
    return-object p0
.end method

.method public whitelist setFilterByStatus(I)Landroid/app/DownloadManager$Query;
    .locals 1
    .param p1, "flags"    # I

    .line 913
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 914
    return-object p0
.end method

.method public greylist-max-o setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .line 903
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mFilterString:Ljava/lang/String;

    .line 904
    return-object p0
.end method

.method public greylist setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "value"    # Z

    .line 927
    iput-boolean p1, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 928
    return-object p0
.end method
