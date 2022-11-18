.class public final Landroid/media/tv/TvContract$Programs$Genres;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$Programs$Genres$Genre;
    }
.end annotation


# static fields
.field public static final whitelist ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field public static final whitelist ARTS:Ljava/lang/String; = "ARTS"

.field private static final greylist-max-o CANONICAL_GENRES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COMEDY:Ljava/lang/String; = "COMEDY"

.field private static final greylist-max-o COMMA:C = ','

.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = ","

.field private static final greylist-max-o DOUBLE_QUOTE:C = '\"'

.field public static final whitelist DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final whitelist EDUCATION:Ljava/lang/String; = "EDUCATION"

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final whitelist ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final whitelist FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final whitelist GAMING:Ljava/lang/String; = "GAMING"

.field public static final whitelist LIFE_STYLE:Ljava/lang/String; = "LIFE_STYLE"

.field public static final whitelist MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final whitelist MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final whitelist NEWS:Ljava/lang/String; = "NEWS"

.field public static final whitelist PREMIER:Ljava/lang/String; = "PREMIER"

.field public static final whitelist SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final whitelist SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final whitelist TECH_SCIENCE:Ljava/lang/String; = "TECH_SCIENCE"

.field public static final whitelist TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 2837
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    .line 2839
    const-string v1, "FAMILY_KIDS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2840
    const-string v1, "SPORTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2841
    const-string v1, "SHOPPING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2842
    const-string v1, "MOVIES"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2843
    const-string v1, "COMEDY"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2844
    const-string v1, "TRAVEL"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2845
    const-string v1, "DRAMA"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2846
    const-string v1, "EDUCATION"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2847
    const-string v1, "ANIMAL_WILDLIFE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2848
    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2849
    const-string v1, "GAMING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2850
    const-string v1, "ARTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2851
    const-string v1, "ENTERTAINMENT"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2852
    const-string v1, "LIFE_STYLE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2853
    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2854
    const-string v1, "PREMIER"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2855
    const-string v1, "TECH_SCIENCE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2862
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "genres"    # Ljava/lang/String;

    .line 2913
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2915
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2917
    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2918
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    .line 2920
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2921
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2922
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2923
    .local v2, "length":I
    const/4 v3, 0x0

    .line 2924
    .local v3, "escape":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 2925
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2926
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 2934
    :sswitch_0
    if-nez v3, :cond_3

    .line 2935
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2936
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 2937
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2939
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    .line 2940
    goto :goto_2

    .line 2928
    .end local v6    # "string":Ljava/lang/String;
    :sswitch_1
    if-nez v3, :cond_3

    .line 2929
    const/4 v3, 0x1

    .line 2930
    goto :goto_2

    .line 2944
    :cond_3
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2945
    const/4 v3, 0x0

    .line 2924
    .end local v5    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2947
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2948
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 2949
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2951
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs whitelist encode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "genres"    # [Ljava/lang/String;

    .line 2874
    if-nez p0, :cond_0

    .line 2876
    const/4 v0, 0x0

    return-object v0

    .line 2878
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2879
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 2880
    .local v1, "separator":Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 2881
    .local v4, "genre":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/media/tv/TvContract$Programs$Genres;->encodeToCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    const-string v1, ","

    .line 2880
    .end local v4    # "genre":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2884
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o encodeToCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "genre"    # Ljava/lang/String;

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2889
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2890
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2891
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2892
    .local v3, "c":C
    const/16 v4, 0x22

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 2897
    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2894
    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2895
    nop

    .line 2900
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2890
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2902
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist isCanonical(Ljava/lang/String;)Z
    .locals 1
    .param p0, "genre"    # Ljava/lang/String;

    .line 2961
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
