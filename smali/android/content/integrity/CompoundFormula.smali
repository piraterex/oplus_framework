.class public final Landroid/content/integrity/CompoundFormula;
.super Landroid/content/integrity/IntegrityFormula;
.source "CompoundFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/CompoundFormula$Connector;
    }
.end annotation


# static fields
.field public static final blacklist AND:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/CompoundFormula;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NOT:I = 0x2

.field public static final blacklist OR:I = 0x1


# instance fields
.field private final blacklist mConnector:I

.field private final blacklist mFormulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/content/integrity/CompoundFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/CompoundFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/CompoundFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;)V
    .locals 4
    .param p1, "connector"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "formulas":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/IntegrityFormula;>;"
    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    .line 86
    nop

    .line 87
    invoke-static {p1}, Landroid/content/integrity/CompoundFormula;->isValidConnector(I)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 86
    const-string v2, "Unknown connector: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {p1, p2}, Landroid/content/integrity/CompoundFormula;->validateFormulas(ILjava/util/List;)V

    .line 89
    iput p1, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    .line 90
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Landroid/content/integrity/IntegrityFormula;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Must have non-negative length. Got %d"

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 99
    iget-object v2, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-static {p1}, Landroid/content/integrity/IntegrityFormula;->readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    iget-object v2, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/content/integrity/CompoundFormula;->validateFormulas(ILjava/util/List;)V

    .line 102
    return-void
.end method

.method private static blacklist connectorToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "connector"    # I

    .line 217
    packed-switch p0, :pswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_0
    const-string v0, "NOT"

    return-object v0

    .line 221
    :pswitch_1
    const-string v0, "OR"

    return-object v0

    .line 219
    :pswitch_2
    const-string v0, "AND"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isValidConnector(I)Z
    .locals 2
    .param p0, "connector"    # I

    .line 230
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$isAppCertificateFormula$2(Landroid/content/integrity/IntegrityFormula;)Z
    .locals 1
    .param p0, "formula"    # Landroid/content/integrity/IntegrityFormula;

    .line 136
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isAppCertificateFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isAppCertificateLineageFormula$3(Landroid/content/integrity/IntegrityFormula;)Z
    .locals 1
    .param p0, "formula"    # Landroid/content/integrity/IntegrityFormula;

    .line 141
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isAppCertificateLineageFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isInstallerFormula$4(Landroid/content/integrity/IntegrityFormula;)Z
    .locals 1
    .param p0, "formula"    # Landroid/content/integrity/IntegrityFormula;

    .line 146
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->isInstallerFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$matches$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/IntegrityFormula;)Z
    .locals 1
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .param p1, "formula"    # Landroid/content/integrity/IntegrityFormula;

    .line 125
    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$matches$1(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/IntegrityFormula;)Z
    .locals 1
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .param p1, "formula"    # Landroid/content/integrity/IntegrityFormula;

    .line 128
    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    return v0
.end method

.method private static blacklist validateFormulas(ILjava/util/List;)V
    .locals 4
    .param p0, "connector"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "formulas":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/IntegrityFormula;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 208
    :pswitch_0
    nop

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 211
    invoke-static {p0}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 208
    const-string v0, "Connector %s must have 1 formula only"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 202
    :pswitch_1
    nop

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 205
    invoke-static {p0}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 202
    const-string v0, "Connector %s must have at least 2 formulas"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    nop

    .line 214
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 169
    return v0

    .line 171
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/CompoundFormula;

    .line 175
    .local v2, "that":Landroid/content/integrity/CompoundFormula;
    iget v3, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    iget v4, v2, Landroid/content/integrity/CompoundFormula;->mConnector:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    iget-object v4, v2, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 172
    .end local v2    # "that":Landroid/content/integrity/CompoundFormula;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getConnector()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    return v0
.end method

.method public blacklist getFormulas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/integrity/IntegrityFormula;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAppCertificateFormula()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isInstallerFormula()Z
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .locals 3
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;

    .line 120
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {v0, p1}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda1;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    .line 128
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 127
    return v0

    .line 124
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/content/integrity/CompoundFormula$$ExternalSyntheticLambda0;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 124
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 153
    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {v3}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "%s "

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 156
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 157
    if-lez v1, :cond_1

    .line 158
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-static {v5}, Landroid/content/integrity/CompoundFormula;->connectorToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, " %s "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1
    iget-object v4, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget v0, p0, Landroid/content/integrity/CompoundFormula;->mConnector:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/content/integrity/CompoundFormula;->mFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    .line 193
    .local v1, "formula":Landroid/content/integrity/IntegrityFormula;
    invoke-static {v1, p1, p2}, Landroid/content/integrity/IntegrityFormula;->writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V

    .line 194
    .end local v1    # "formula":Landroid/content/integrity/IntegrityFormula;
    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method
