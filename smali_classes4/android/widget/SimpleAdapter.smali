.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$SimpleFilter;,
        Landroid/widget/SimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private greylist-max-p mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDropDownInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mDropDownResource:I

.field private greylist-max-o mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private greylist-max-o mFrom:[Ljava/lang/String;

.field private final greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mResource:I

.field private greylist-max-o mTo:[I

.field private greylist-max-o mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrom(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTo(Landroid/widget/SimpleAdapter;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfilteredData(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmData(Landroid/widget/SimpleAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUnfilteredData(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 91
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    iput-object p2, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    .line 93
    iput p3, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    iput p3, p0, Landroid/widget/SimpleAdapter;->mResource:I

    .line 94
    iput-object p4, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 95
    iput-object p5, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    .line 96
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    return-void
.end method

.method private greylist-max-o bindView(ILandroid/view/View;)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 186
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 187
    .local v0, "dataSet":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 192
    .local v1, "binder":Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v2, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 193
    .local v2, "from":[Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    .line 194
    .local v3, "to":[I
    array-length v4, v3

    .line 196
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_c

    .line 197
    aget v6, v3, v5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 198
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_b

    .line 199
    aget-object v7, v2, v5

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 200
    .local v7, "data":Ljava/lang/Object;
    if-nez v7, :cond_1

    const-string v8, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "text":Ljava/lang/String;
    :goto_1
    if-nez v8, :cond_2

    .line 202
    const-string v8, ""

    .line 205
    :cond_2
    const/4 v9, 0x0

    .line 206
    .local v9, "bound":Z
    if-eqz v1, :cond_3

    .line 207
    invoke-interface {v1, v6, v7, v8}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    .line 210
    :cond_3
    if-nez v9, :cond_b

    .line 211
    instance-of v10, v6, Landroid/widget/Checkable;

    if-eqz v10, :cond_7

    .line 212
    instance-of v10, v7, Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    .line 213
    move-object v10, v6

    check-cast v10, Landroid/widget/Checkable;

    move-object v11, v7

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/widget/Checkable;->setChecked(Z)V

    goto/16 :goto_3

    .line 214
    :cond_4
    instance-of v10, v6, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    .line 217
    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0, v10, v8}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 219
    :cond_5
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 221
    if-nez v7, :cond_6

    const-string v12, "<unknown type>"

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 223
    :cond_7
    instance-of v10, v6, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    .line 226
    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0, v10, v8}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    .line 227
    :cond_8
    instance-of v10, v6, Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    .line 228
    instance-of v10, v7, Ljava/lang/Integer;

    if-eqz v10, :cond_9

    .line 229
    move-object v10, v6

    check-cast v10, Landroid/widget/ImageView;

    move-object v11, v7

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 231
    :cond_9
    move-object v10, v6

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {p0, v10, v8}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    .line 234
    :cond_a
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a  view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 196
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "data":Ljava/lang/Object;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "bound":Z
    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 240
    .end local v5    # "i":I
    :cond_c
    return-void
.end method

.method private greylist-max-o createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "resource"    # I

    .line 130
    if-nez p3, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, p5, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 133
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .line 136
    .restart local v0    # "v":Landroid/view/View;
    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/widget/SimpleAdapter;->bindView(ILandroid/view/View;)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 181
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    move-object v2, v0

    .line 182
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v6, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 2

    .line 320
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$SimpleFilter-IA;)V

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 110
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 124
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/widget/SimpleAdapter;->mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public whitelist setDropDownViewResource(I)V
    .locals 0
    .param p1, "resource"    # I

    .line 148
    iput p1, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    .line 149
    return-void
.end method

.method public whitelist setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 164
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 170
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 172
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void
.end method

.method public whitelist setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Landroid/widget/SimpleAdapter$ViewBinder;

    .line 262
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 263
    return-void
.end method

.method public whitelist setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # I

    .line 279
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    return-void
.end method

.method public whitelist setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .line 301
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 305
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public whitelist setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .line 316
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method
