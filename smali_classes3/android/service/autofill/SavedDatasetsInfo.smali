.class public final Landroid/service/autofill/SavedDatasetsInfo;
.super Ljava/lang/Object;
.source "SavedDatasetsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SavedDatasetsInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist TYPE_PASSWORDS:Ljava/lang/String; = "passwords"


# instance fields
.field private final blacklist mCount:I

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const-string/jumbo v1, "passwords"

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: TYPE_OTHER("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), TYPE_PASSWORDS("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1
    :goto_0
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 109
    iput p2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    .line 110
    const-class v2, Landroid/annotation/IntRange;

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const-string v5, "from"

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 115
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 153
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/autofill/SavedDatasetsInfo;

    .line 157
    .local v2, "that":Landroid/service/autofill/SavedDatasetsInfo;
    iget-object v3, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 158
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    iget v4, v2, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 153
    .end local v2    # "that":Landroid/service/autofill/SavedDatasetsInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getCount()I
    .locals 1

    .line 130
    iget v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    return v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 168
    const/4 v0, 0x1

    .line 169
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 170
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    add-int/2addr v0, v2

    .line 171
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedDatasetsInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
