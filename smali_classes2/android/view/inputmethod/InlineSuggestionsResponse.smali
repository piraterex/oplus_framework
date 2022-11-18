.class public final Landroid/view/inputmethod/InlineSuggestionsResponse;
.super Ljava/lang/Object;
.source "InlineSuggestionsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInlineSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestionsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "inlineSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InlineSuggestion;>;"
    const-class v1, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 175
    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    .line 176
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "inlineSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InlineSuggestion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    .line 93
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    return-void
.end method

.method public static blacklist newInlineSuggestionsResponse(Ljava/util/List;)Landroid/view/inputmethod/InlineSuggestionsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;)",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;"
        }
    .end annotation

    .line 57
    .local p0, "inlineSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InlineSuggestion;>;"
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 137
    .local v0, "that":Landroid/view/inputmethod/InlineSuggestionsResponse;
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    iget-object v2, v0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    .line 138
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 137
    return v1

    .line 133
    .end local v0    # "that":Landroid/view/inputmethod/InlineSuggestionsResponse;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInlineSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 147
    const/4 v0, 0x1

    .line 148
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionsResponse { inlineSuggestions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsResponse;->mInlineSuggestions:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 159
    return-void
.end method
